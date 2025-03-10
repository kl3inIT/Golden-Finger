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
import model.Order;
import model.OrderDetail;
import model.User;
import model.WishList;

/**
 *
 * @author nhudi
 */
@WebServlet(name = "OrderHistoryServlet", urlPatterns = {"/orderhistory"})
public class OrderHistoryServlet extends HttpServlet {

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

        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCid(0));

        request.setAttribute("orderList", od.getAllOrderByUserId(user.getId()));
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("orderhistory.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        String fullName = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String comment = request.getParameter("comment");

        ProductDAO pd = new ProductDAO();

        Cookie[] cookies = request.getCookies();
        String txt = "";
        for (Cookie c : cookies) {
            if (c.getName().equals("cart")) {
                txt = c.getValue();
            }
        }
        Cart cart = new Cart(txt, pd.getAllProductByCid(0));

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        OrderDAO od = new OrderDAO();
        int orderId = od.createOrder(user.getId(), fullName, phone, address, comment, cart);
        if (orderId > 0) {
            // insret into orderdetail
            OrderDetailDAO odd = new OrderDetailDAO();

            odd.createOrderDetail(cart, orderId);
            //remove cookie cart and listItem into cart
            for (Cookie c : cookies) {
                if (c.getName().equals("cart")) {
                    c.setMaxAge(0);
                    response.addCookie(c);
                    break;
                }
            }
            pd.updateUnitInStock(cart);
            cart.removeAllItem();

            response.sendRedirect("orderhistory");
        } else {
            System.out.println("failed");
            response.sendRedirect("checkout");
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
