package controller.shop;

import dal.CategoryDAO;
import dal.OrderDAO;
import dal.OrderDetailDAO;
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

import model.WishList;

@WebServlet(name = "OrderDetailServlet", urlPatterns = {"/orderdetail"})
public class OrderDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false); // Không tạo session mới nếu chưa có
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }
        int orderId = -1;
        try {
            orderId = Integer.parseInt(request.getParameter("oid"));
        } catch (Exception e) {
        }
        CategoryDAO cd = new CategoryDAO();
        ProductDAO pd = new ProductDAO();
        OrderDAO od = new OrderDAO();
        OrderDetailDAO odd = new OrderDetailDAO();
        
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
        
        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCid(0));
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("orderDetailList", odd.getOrderDetailByOrderId(orderId));
        request.setAttribute("order", od.getOrderById(orderId));
        request.getRequestDispatcher("orderdetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
