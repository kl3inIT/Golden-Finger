package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author nhudi
 */
@WebServlet(name = "ProductListServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int cid = -1;
        try {
            cid = Integer.parseInt(request.getParameter("cid"));
        } catch (Exception e) {
            cid = 0;
            e.printStackTrace();
        }
        ProductDAO p = new ProductDAO();
        SupplierDAO sd = new SupplierDAO();
        CategoryDAO cd = new CategoryDAO();
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("supplierCountProductList", sd.getNumberOfProductAlongSuplier());
        request.setAttribute("productList", p.getAllProductByCid(cid));
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
