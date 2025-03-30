package controller.admin.order;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.OrderDetail;

@WebServlet(name = "InvoiceServlet", urlPatterns = {"/invoice"})
public class InvoiceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int orderId = -1;
        try {
            orderId = Integer.parseInt(request.getParameter("oid"));
        } catch (Exception e) {
        }
        ProductDAO pd = new ProductDAO();
        OrderDAO od = new OrderDAO();
        OrderDetailDAO odd = new OrderDetailDAO();

        List<OrderDetail> orderDetailList = odd.getOrderDetailByOrderId(orderId);
        int totalQuantity = orderDetailList.stream()
                .mapToInt(OrderDetail::getQuantity)
                .sum();
        request.setAttribute("orderDetailList", orderDetailList);
        request.setAttribute("totalQuantity", totalQuantity);
        request.setAttribute("order", od.getOrderById(orderId));
        request.getRequestDispatcher("dashboard/invoice.jsp").forward(request, response);
    }

}
