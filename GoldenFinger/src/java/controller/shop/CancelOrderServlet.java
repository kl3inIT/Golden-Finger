package controller.shop;

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

@WebServlet(name = "CancelOrderServlet", urlPatterns = {"/cancel"})
public class CancelOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int orderId = Integer.parseInt(request.getParameter("orderId"));
            ProductDAO pd = new ProductDAO();
            OrderDAO od = new OrderDAO();
            OrderDetailDAO odd = new OrderDetailDAO();
            List<OrderDetail> orderDetailList = odd.getOrderDetailByOrderId(orderId);
            pd.updateUnitInStock(orderDetailList);
            od.cancelOrder(orderId);
            response.sendRedirect("orderhistory");
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
    }

}
