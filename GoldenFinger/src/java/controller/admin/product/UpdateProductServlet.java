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
import model.Product;

/**
 *
 * @author nhudi
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/updateproduct"})
public class UpdateProductServlet extends HttpServlet {
    
    private final ProductDAO pd = new ProductDAO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

        Product p = pd.getProductById(pid);
        request.setAttribute("product", p);
        request.getRequestDispatcher("dashboard/updateproduct.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
    
    
    


    private void updateImages(int id, HttpServletRequest request) throws IOException, ServletException{
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
                String newFileName = id + "_" + i  + ".jpg";
        
                // Lưu file vào thư mục
                String filePath = uploadPath + File.separator + newFileName;
                part.write(filePath);              
            }
            System.out.println(i);
            ++i;
        }
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
