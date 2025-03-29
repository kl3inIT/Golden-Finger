package controller.admin.order;

import dal.OrderDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Order;

@WebServlet(name = "OrderListServlet", urlPatterns = {"/orderlist"})
public class OrderListServlet extends HttpServlet {

    private final OrderDAO od = new OrderDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        List<Order> orders = od.getAllOrders();
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("dashboard/orderlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String statusId = request.getParameter("statusId");
        String orderId = request.getParameter("orderId");
        od.updateStatusOrder(orderId, statusId);
    }
    
}
