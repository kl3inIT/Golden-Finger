package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.WishList;
import utils.ServletUtils;

@WebServlet(name="ContactUsServlet", urlPatterns={"/contactus"})
public class ContactUsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategoryDAO cd = new CategoryDAO();
        ProductDAO pd = new ProductDAO();

        Cart cart = ServletUtils.getCartFromCookie(request, pd.getAllProductByCid(0));
        WishList wishlist = ServletUtils.getWishlistFromCookie(request, pd.getAllProductByCid(0));
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.getRequestDispatcher("contact-us.jsp").forward(request, response);
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
