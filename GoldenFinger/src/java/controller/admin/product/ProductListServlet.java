package controller.admin.product;

import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

@WebServlet(name = "ProductListServlet", urlPatterns = {"/productlist"})
public class ProductListServlet extends HttpServlet {

    private ProductDAO pd = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> listProduct = pd.getAllProductByCid(0);

        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("dashboard/productlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("productId");
        String type = request.getParameter("type");
        if (type.equals("disable")) {
            pd.disableStatus(pid);          
        }
        else{
            pd.enableStatus(pid);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}