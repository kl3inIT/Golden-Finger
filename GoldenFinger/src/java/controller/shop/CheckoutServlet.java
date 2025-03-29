package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.User;
import model.WishList;
import utils.ServletUtils;

@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false); // Không tạo session mới nếu chưa có
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }
        User user = (User) session.getAttribute("account");

        ProductDAO pd = new ProductDAO();
        CategoryDAO cd = new CategoryDAO();

        Cart cart = ServletUtils.getCartFromCookie(request, pd.getAllProductByCidForUser(0));
        WishList wishlist = ServletUtils.getWishlistFromCookie(request, pd.getAllProductByCidForUser(0));

        if (cart.getSizeCart() == 0) {
            response.sendRedirect("shop");
        } else {
            request.setAttribute("user", user);
            request.setAttribute("cart", cart.getListItems());
            request.setAttribute("sizeCart", cart.getSizeCart());
            request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
            request.setAttribute("categoryList", cd.getAllCategory());
            request.setAttribute("totalAmount", cart.getTotalAmount());
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }

    }

}
