package controller.admin.suppliers;

import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Supplier;

@WebServlet(name = "SupplierListServlet", urlPatterns = {"/supplierlist"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1 MB
        maxFileSize = 1024 * 1024 * 5, // 5 MB
        maxRequestSize = 1024 * 1024 * 10 // 10 MB
)
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

    private String uploadFile(Part part) throws IOException {
        String uploadPath = getServletContext().getRealPath("") + File.separator + "dashboard/assets/img/supplier";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String fileName = System.currentTimeMillis() + "_" + getFileName(part);
        String filePath = uploadPath + File.separator + fileName;
        part.write(filePath);

        return "dashboard/assets/img/supplier/" + fileName;
    }

    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("add".equals(action)) {
                String companyName = request.getParameter("supplierName");
                String contactName = request.getParameter("contactName");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
                String homePage = request.getParameter("homePage");

                // Xử lý upload ảnh
                Part imagePart = request.getPart("image");
                String imageUrl = "dashboard/assets/img/supplier/default.png"; // Default image

                if (imagePart != null && imagePart.getSize() > 0) {
                    imageUrl = uploadFile(imagePart);
                }

                Supplier newSupplier = new Supplier();
                newSupplier.setCompanyName(companyName);
                newSupplier.setContactName(contactName);
                newSupplier.setPhone(phone);
                newSupplier.setHomePage(homePage != null ? homePage : email);
                newSupplier.setCountry(country);
                newSupplier.setImage(imageUrl);

                boolean success = supplierDAO.addSupplier(newSupplier);

                if (success) {
                    LOGGER.log(Level.INFO, "Supplier added successfully: {0}", companyName);
                } else {
                    LOGGER.log(Level.WARNING, "Failed to add supplier: {0}", companyName);
                }

            } else if ("update".equals(action)) {
                int supplierId = Integer.parseInt(request.getParameter("supplierId"));
                String companyName = request.getParameter("supplierName");
                String contactName = request.getParameter("contactName");
                String phone = request.getParameter("phone");
                String country = request.getParameter("country");
                String homePage = request.getParameter("homePage");

                // Xử lý upload ảnh mới
                Part imagePart = request.getPart("image");
                String imageUrl = null;

                if (imagePart != null && imagePart.getSize() > 0) {
                    imageUrl = uploadFile(imagePart);
                } else {
                    // Giữ nguyên ảnh cũ
                    Supplier existingSupplier = supplierDAO.getSupplierById(supplierId);
                    if (existingSupplier != null) {
                        imageUrl = existingSupplier.getImage();
                    }
                }

                Supplier supplier = new Supplier();
                supplier.setId(supplierId);
                supplier.setCompanyName(companyName);
                supplier.setContactName(contactName);
                supplier.setPhone(phone);
                supplier.setHomePage(homePage);
                supplier.setCountry(country);
                supplier.setImage(imageUrl);

                boolean success = supplierDAO.updateSupplier(supplier);

                if (success) {
                    LOGGER.log(Level.INFO, "Supplier updated successfully: {0}", companyName);
                } else {
                    LOGGER.log(Level.WARNING, "Failed to update supplier: {0}", companyName);
                }
            } else if ("delete".equals(action)) {
                // Xử lý xóa nhà cung cấp
                int supplierId = Integer.parseInt(request.getParameter("supplierId"));
                boolean success = supplierDAO.deleteSupplier(supplierId);

                if (success) {
                    LOGGER.log(Level.INFO, "Supplier deleted successfully: ID {0}", supplierId);
                    // Không trả về nội dung nếu thành công
                } else {
                    LOGGER.log(Level.WARNING, "Failed to delete supplier: ID {0}", supplierId);
                    response.getWriter().write("Cannot delete this supplier because it is used by products");
                }

                // Dừng xử lý, không chuyển hướng khi delete (AJAX call)
                return;
            }

            // Chuyển hướng về trang danh sách nhà cung cấp
            response.sendRedirect("supplierlist");
        } catch (ServletException | IOException | NumberFormatException e) {
            LOGGER.log(Level.SEVERE, "Error processing supplier action: " + action, e);
            response.sendRedirect("supplierlist");
        }

    }

}
