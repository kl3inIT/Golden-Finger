package controller.admin.product;

import dal.CategoryDAO;
import dal.ProductDAO;
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
import java.nio.file.Paths;
import java.util.Collection;
import java.util.List;
import model.Category;
import model.Product;
import model.Supplier;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/updateproduct"})
public class UpdateProductServlet extends HttpServlet {

    private final ProductDAO pd = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid_raw = request.getParameter("pid");
        int pid = -1;
        try {
            pid = Integer.parseInt(pid_raw);
        } catch (Exception e) {
            e.printStackTrace();
        }

        CategoryDAO categoryDAO = new CategoryDAO();
        SupplierDAO supplierDAO = new SupplierDAO();

        List<Category> categories = categoryDAO.getAllCategory();
        List<Supplier> suppliers = supplierDAO.getAllSupplier();

        request.setAttribute("categories", categories);
        request.setAttribute("suppliers", suppliers);

        Product p = pd.getProductById(pid);
        request.setAttribute("product", p);
        request.getRequestDispatcher("dashboard/updateproduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid_raw = request.getParameter("pid");
        int pid = -1;
        try {
            pid = Integer.parseInt(pid_raw);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String name = request.getParameter("name");
        String quantity = request.getParameter("quantity");
        String category = request.getParameter("category");
        String supplier = request.getParameter("supplier");
        String pirce = request.getParameter("price");
        String discount = request.getParameter("discount");
        String include = request.getParameter("include");
        String warranty = request.getParameter("warranty");
        String demension = request.getParameter("demension");
        String weight = request.getParameter("weight");
        String speaker = request.getParameter("speaker");
        String date = request.getParameter("date");
        String detail = request.getParameter("detail");
        pd.updateProduct(pid, name, pirce, quantity,
                "0", include, warranty, demension,
                speaker, "5", weight,
                detail, date, discount,
                category, supplier);
        updateImages(pid, request);
        response.sendRedirect("updateproduct?pid=" + pid);
    }

    private void updateImages(int id, HttpServletRequest request) throws IOException, ServletException {
        String rootPath = new File(getServletContext().getRealPath("")).getParentFile().getParent();
        String uploadPath = rootPath + File.separator + "web" + File.separator + "assets" + File.separator + "img" + File.separator + "product-images";
        // Tạo thư mục nếu chưa có
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        Collection<Part> fileParts = request.getParts();
        int i = 1;
        for (Part part : fileParts) {
            if (part.getName().equals("file") && part.getSize() > 0) { // Kiểm tra đúng input file
                String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                // Tạo tên file mới để tránh trùng
                String newFileName = id + "_" + i + ".jpg";

                // Lưu file vào thư mục
                String filePath = uploadPath + File.separator + newFileName;
                part.write(filePath);
            }
            System.out.println(i);
            ++i;
        }
    }

}
