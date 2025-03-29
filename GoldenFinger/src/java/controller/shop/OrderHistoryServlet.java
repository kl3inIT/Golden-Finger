package controller.shop;

import dal.CategoryDAO;
import dal.OrderDAO;
import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.OrderDetail;
import model.User;
import model.WishList;

@WebServlet(name = "OrderHistoryServlet", urlPatterns = {"/orderhistory"})
public class OrderHistoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // Không tạo session mới nếu chưa có
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }
        User user = (User) session.getAttribute("account");
        CategoryDAO cd = new CategoryDAO();
        ProductDAO pd = new ProductDAO();
        OrderDAO od = new OrderDAO();
        OrderDetail odd = new OrderDetail();

        //get cart and wishlist from cookie
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

        Cart cart = new Cart(txt, pd.getAllProductByCidForUser(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCidForUser(0));

        request.setAttribute("orderList", od.getAllOrderByUserId(user.getId()));
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("orderhistory.jsp").forward(request, response);
    }

}
