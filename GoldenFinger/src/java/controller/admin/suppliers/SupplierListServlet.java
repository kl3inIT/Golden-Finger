package controller.admin.suppliers;

import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Supplier;

@WebServlet(name = "SupplierListServlet", urlPatterns = {"/supplierlist"})
public class SupplierListServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(SupplierListServlet.class.getName());
    private final SupplierDAO supplierDAO = new SupplierDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Lấy danh sách tất cả các nhà cung cấp
            List<Supplier> suppliers = supplierDAO.getAllSupplier();
            request.setAttribute("suppliers", suppliers);

            // Forward tới trang danh sách nhà cung cấp
            request.getRequestDispatcher("dashboard/supplierlist.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            LOGGER.log(Level.SEVERE, "Error getting suppliers", e);
            response.sendRedirect("admin");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        try {
            if ("add".equals(action)) {
                // Xử lý thêm mới nhà cung cấp
                String companyName = request.getParameter("supplierName");
                String contactName = request.getParameter("contactName");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
                String homePage = request.getParameter("homePage");
                String image = request.getParameter("image");

                Supplier newSupplier = new Supplier();
                newSupplier.setCompanyName(companyName);
                newSupplier.setContactName(contactName);
                newSupplier.setPhone(phone);
                newSupplier.setHomePage(homePage != null ? homePage : email);
                newSupplier.setCountry(country);
                newSupplier.setImage(image != null ? image : "dashboard/assets/img/supplier/default.png");

                boolean success = supplierDAO.addSupplier(newSupplier);

                if (success) {
                    LOGGER.info("Supplier added successfully: " + companyName);
                } else {
                    LOGGER.warning("Failed to add supplier: " + companyName);
                }
            } else if ("update".equals(action)) {
                // Xử lý cập nhật nhà cung cấp
                int supplierId = Integer.parseInt(request.getParameter("supplierId"));
                String companyName = request.getParameter("supplierName");
                String contactName = request.getParameter("contactName");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
                String homePage = request.getParameter("homePage");
                String image = request.getParameter("image");

                Supplier supplier = new Supplier();
                supplier.setId(supplierId);
                supplier.setCompanyName(companyName);
                supplier.setContactName(contactName);
                supplier.setPhone(phone);
                supplier.setHomePage(homePage != null ? homePage : email);
                supplier.setCountry(country);
                supplier.setImage(image != null ? image : "dashboard/assets/img/supplier/default.png");

                boolean success = supplierDAO.updateSupplier(supplier);

                if (success) {
                    LOGGER.info("Supplier updated successfully: " + companyName);
                } else {
                    LOGGER.warning("Failed to update supplier: " + companyName);
                }
            } else if ("delete".equals(action)) {
                // Xử lý xóa nhà cung cấp
                int supplierId = Integer.parseInt(request.getParameter("supplierId"));
                boolean success = supplierDAO.deleteSupplier(supplierId);

                if (success) {
                    LOGGER.info("Supplier deleted successfully: ID " + supplierId);
                    // Không trả về nội dung nếu thành công
                } else {
                    LOGGER.warning("Failed to delete supplier: ID " + supplierId);
                    response.getWriter().write("Cannot delete this supplier because it is used by products");
                }

                // Dừng xử lý, không chuyển hướng khi delete (AJAX call)
                return;
            }

            // Chuyển hướng về trang danh sách nhà cung cấp
            response.sendRedirect("supplierlist");
        } catch (IOException | NumberFormatException e) {
            LOGGER.log(Level.SEVERE, "Error processing supplier action: " + action, e);
            response.sendRedirect("supplierlist");
        }
    }

    @Override
    public String getServletInfo() {
        return "Supplier List Servlet handles CRUD operations for suppliers";
    }
}
