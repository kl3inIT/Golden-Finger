package controller.admin.product;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
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

/**
 *
 * @author nhudi
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)

@WebServlet(name = "addProductServlet", urlPatterns = {"/addproduct"})
public class AddProductServlet extends HttpServlet {

    private static final String UPLOAD_DIR = "web/assets/img/product-images";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("dashboard/addproduct.jsp").forward(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {            
        ProductDAO pd = new ProductDAO();
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
        String str = getStringImages(pd, request);
        pd.addProduct(name, pirce, quantity,
                "0", str, include, 
                warranty, demension, speaker, 
                "5", weight, detail,
                date, discount, "1", 
                category, supplier);
        response.sendRedirect("admin");
       
    }
    
    
    private String getStringImages(ProductDAO pd, HttpServletRequest request) throws IOException, ServletException{
        String rootPath = new File(getServletContext().getRealPath("")).getParentFile().getParent();
        String uploadPath = rootPath + File.separator + "web" + File.separator + "assets" + File.separator + "img" + File.separator + "product-images";
        // Tạo thư mục nếu chưa có
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        Collection<Part> fileParts = request.getParts();
        int i = 1;
        String strImages = "";
        for (Part part : fileParts) {
            if (part.getName().equals("file") && part.getSize() > 0) { // Kiểm tra đúng input file
                String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();

                // Tạo tên file mới để tránh trùng
                String newFileName = pd.getHighestProductId() + 1 + "_" + i  + ".jpg";
                strImages += "assets/img/product-images/" + newFileName;
                if (i < fileParts.size()){
                   strImages += ",";
                }
                ++i;
                // Lưu file vào thư mục
                String filePath = uploadPath + File.separator + newFileName;
                part.write(filePath);              
            }
        }
        return strImages;
    }
    
    
 
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
