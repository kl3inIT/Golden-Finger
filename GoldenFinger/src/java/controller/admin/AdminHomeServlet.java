package controller.admin;

import com.google.gson.Gson;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Map;
import dal.DashboardDAO;
import dal.OrderDAO;
import dal.ProductDAO;
import java.util.List;
import model.Order;
import model.Product;

@WebServlet(name = "AdminHomeServlet", urlPatterns = {"/admin"})
public class AdminHomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DashboardDAO db = new DashboardDAO();
        OrderDAO od = new OrderDAO();
        ProductDAO pd = new ProductDAO();

        Map<Integer, Double> monthlyRevenue = db.getMonthlyRevenue();
        Map<Integer, Integer> monthlyOrders = db.getMonthlyOrderCount();
        Map<Integer, Integer> monthlyCustomers = db.getMonthlyCustomerCount();
        Map<Integer, Integer> orderCountByProductId = db.getOrderCountByProductId();
        Map<Integer, Double> totalRevenueByProductId = db.getTotalRevenueByProductId();

        int totalCustomers = db.getTotalCustomers();
        int totalOrders = od.getTotalOrders();
        double totalRevenue = od.getTotalRevenue();

        double revenueGrowth = db.getRevenueGrowth();
        double orderGrowth = db.getOrderGrowth();
        double customerGrowth = db.getCustomerGrowth();

        List<Order> recentOrders = od.getRecentOrders(100);
        List<Product> topProducts = pd.getTopSellingProducts(100);

        Gson gson = new Gson();

        double[] revenueData = new double[12];
        double[] ordersData = new double[12];
        double[] customersData = new double[12];

        for (int i = 0; i < 12; i++) {
            revenueData[i] = monthlyRevenue.getOrDefault(i + 1, 0.0);
            ordersData[i] = monthlyOrders.getOrDefault(i + 1, 0);
            customersData[i] = monthlyCustomers.getOrDefault(i + 1, 0);
        }

        request.setAttribute("revenueData", gson.toJson(revenueData));
        request.setAttribute("ordersData", gson.toJson(ordersData));
        request.setAttribute("customersData", gson.toJson(customersData));
        request.setAttribute("orderCountByProductId", orderCountByProductId);
        request.setAttribute("totalRevenueByProductId", totalRevenueByProductId);

        request.setAttribute("totalCustomers", totalCustomers);
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("totalRevenue", totalRevenue);

        request.setAttribute("revenueGrowth", revenueGrowth);
        request.setAttribute("orderGrowth", orderGrowth);
        request.setAttribute("customerGrowth", customerGrowth);

        request.setAttribute("recentOrders", recentOrders);
        request.setAttribute("topProducts", topProducts);

        request.getRequestDispatcher("dashboard/dashboard.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO od = new OrderDAO();
        String statusId = request.getParameter("statusId");
        String orderId = request.getParameter("orderId");
        od.updateStatusOrder(orderId, statusId);
    }

}
