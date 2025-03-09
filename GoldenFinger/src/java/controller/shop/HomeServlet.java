package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.WishList;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO pd = new ProductDAO();
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();

        String txt = "";
        String txt2 = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("cart")) {
                txt = c.getValue();
            }
            if (c.getName().equals("wishlist")) {
                txt2 = c.getValue();
            }
        }
        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCid(0));
        
        
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("saleProduct", pd.getSaleProduct());
        request.setAttribute("supplierCountProductList", sd.getNumberOfProductAlongSuplier());
        request.setAttribute("newProduct", pd.getNewProduct());
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
