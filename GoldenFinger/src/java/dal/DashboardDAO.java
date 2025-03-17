package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DBConnect;

public class DashboardDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(DashboardDAO.class.getName());

    public Map<Integer, Double> getMonthlyRevenue() {
        Map<Integer, Double> revenueByMonth = new HashMap<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return revenueByMonth;
        }

        // Initialize all months with 0 revenue
        for (int i = 1; i <= 12; i++) {
            revenueByMonth.put(i, 0.0);
        }

        String sql = "SELECT MONTH(o.Date) AS MONTH, SUM(od.UnitPrice * (1 - od.Discount) * od.Quantity) as REVENUE "
                + "FROM Orders o "
                + "JOIN OrderDetails od ON o.OrderID = od.OrderID "
                + "WHERE YEAR(o.Date) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(o.Date) ";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int month = rs.getInt("MONTH");
                double revenue = rs.getDouble("REVENUE");
                revenueByMonth.put(month, revenue);
            }
            return revenueByMonth;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching monthly revenue", e);
            return revenueByMonth;
        }
    }

    public Map<Integer, Integer> getMonthlyOrderCount() {
        Map<Integer, Integer> ordersByMonth = new HashMap<>();

        // Initialize all months with 0 orders
        for (int i = 1; i <= 12; i++) {
            ordersByMonth.put(i, 0);
        }

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return ordersByMonth;
        }

        String sql = "SELECT MONTH(Date) AS MONTH, COUNT(*) AS OrderCount "
                + "FROM Orders "
                + "WHERE YEAR(DATE) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(Date)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int month = rs.getInt("MONTH");
                int count = rs.getInt("OrderCount");
                ordersByMonth.put(month, count);
            }

            return ordersByMonth;

        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching monthly order count", e);
            return ordersByMonth;
        }
    }

    public Map<Integer, Integer> getMonthlyCustomerCount() {
        Map<Integer, Integer> customersByMonth = new HashMap<>();

        // Initialize all months with 0 customers
        for (int i = 1; i <= 12; i++) {
            customersByMonth.put(i, 0);
        }

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return customersByMonth;
        }

        String sql = "SELECT MONTH(Date) AS MONTH, COUNT(DISTINCT o.UserID) AS CustomerCount"
                + " FROM Orders o JOIN Users u ON o.UserID = u.UserID"
                + " WHERE YEAR(DATE) = YEAR(GETDATE()) AND u.RoleID = 1"
                + " GROUP BY MONTH(Date)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int month = rs.getInt("MONTH");
                int count = rs.getInt("CustomerCount");
                customersByMonth.put(month, count);
            }

            return customersByMonth;

        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching monthly customer count", e);
            return customersByMonth;
        }
    }

    public int getTotalCustomers() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT COUNT(DISTINCT o.UserID) AS CustomerCount "
                + "FROM Orders o JOIN Users u ON o.UserID = u.UserID "
                + "WHERE u.RoleID = 1";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching total customers", e);
            return 0;
        }
    }

    public double getRevenueGrowth() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT "
                + "(SELECT SUM(od.UnitPrice * (1 - od.Discount) * od.Quantity) "
                + "FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID "
                + "WHERE MONTH(o.Date) = MONTH(GETDATE()) AND YEAR(o.Date) = YEAR(GETDATE())) as CurrentMonth, "
                + "(SELECT SUM(od.UnitPrice * (1 - od.Discount) * od.Quantity) "
                + "FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID "
                + "WHERE MONTH(o.Date) = MONTH(DATEADD(MONTH, -1, GETDATE())) "
                + "AND YEAR(o.Date) = YEAR(DATEADD(MONTH, -1, GETDATE()))) as LastMonth";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                double currentMonth = rs.getDouble("CurrentMonth");
                double lastMonth = rs.getDouble("LastMonth");

                if (lastMonth == 0) {
                    return 100.0;
                }

                return ((currentMonth - lastMonth) / lastMonth) * 100;
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error calculating revenue growth", e);
            return 0;
        }
    }

    public double getOrderGrowth() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT "
                + "(SELECT COUNT(*) FROM Orders "
                + "WHERE MONTH(Date) = MONTH(GETDATE()) AND YEAR(Date) = YEAR(GETDATE())) as CurrentMonth, "
                + "(SELECT COUNT(*) FROM Orders "
                + "WHERE MONTH(Date) = MONTH(DATEADD(MONTH, -1, GETDATE())) "
                + "AND YEAR(Date) = YEAR(DATEADD(MONTH, -1, GETDATE()))) as LastMonth";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                double currentMonth = rs.getDouble("CurrentMonth");
                double lastMonth = rs.getDouble("LastMonth");

                if (lastMonth == 0) {
                    return 100.0;
                }

                return ((currentMonth - lastMonth) / lastMonth) * 100;
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error calculating order growth", e);
            return 0;
        }
    }

    public double getCustomerGrowth() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT "
                + "(SELECT COUNT(DISTINCT o.UserID) FROM Orders o JOIN Users u ON o.UserID = u.UserID "
                + "WHERE u.RoleID = 1 AND MONTH(o.Date) = MONTH(GETDATE()) AND YEAR(o.Date) = YEAR(GETDATE())) as CurrentMonth, "
                + "(SELECT COUNT(DISTINCT o.UserID) FROM Orders o JOIN Users u ON o.UserID = u.UserID "
                + "WHERE u.RoleID = 1 AND MONTH(o.Date) = MONTH(DATEADD(MONTH, -1, GETDATE())) "
                + "AND YEAR(o.Date) = YEAR(DATEADD(MONTH, -1, GETDATE()))) as LastMonth";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                double currentMonth = rs.getDouble("CurrentMonth");
                double lastMonth = rs.getDouble("LastMonth");

                if (lastMonth == 0) {
                    return 100.0; // Tăng 100% nếu tháng trước không có khách hàng
                }

                return ((currentMonth - lastMonth) / lastMonth) * 100;
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error calculating customer growth", e);
            return 0;
        }
    }

    public Map<Integer, Integer> getOrderCountByProductId() {
        Map<Integer, Integer> orderCountByProductId = new HashMap<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return orderCountByProductId;
        }

        String sql = "SELECT od.ProductID, COUNT(*) AS OrderCount "
                + "FROM OrderDetails od "
                + "JOIN Orders o ON od.OrderID = o.OrderID "
                + "GROUP BY od.ProductID";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int productId = rs.getInt("ProductID");
                int count = rs.getInt("OrderCount");
                orderCountByProductId.put(productId, count);
            }
            return orderCountByProductId;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching order count by product ID", e);
            return orderCountByProductId;
        }
    }

    public Map<Integer, Double> getTotalRevenueByProductId() {
        Map<Integer, Double> revenueByProductId = new HashMap<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return revenueByProductId;
        }

        String sql = "SELECT od.ProductID, SUM(od.UnitPrice * (1 - od.Discount) * od.Quantity) AS TotalRevenue "
                + "FROM OrderDetails od "
                + "JOIN Orders o ON od.OrderID = o.OrderID "
                + "GROUP BY od.ProductID";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int productId = rs.getInt("ProductID");
                double revenue = rs.getDouble("TotalRevenue");
                revenueByProductId.put(productId, revenue);
            }
            return revenueByProductId;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching total revenue by product ID", e);
            return revenueByProductId;
        }
    }

    public static void main(String[] args) {
        DashboardDAO db = new DashboardDAO();
        Map<Integer, Double> monthlyRevenue = db.getMonthlyRevenue();
        Map<Integer, Integer> ordersByMonth = db.getMonthlyOrderCount();
        Map<Integer, Integer> customersByMonth = db.getMonthlyCustomerCount();
        Map<Integer, Integer> orderCountByProductId = db.getOrderCountByProductId();
        Map<Integer, Double> totalRevenueByProductId = db.getTotalRevenueByProductId();

        for (Map.Entry<Integer, Integer> entry : orderCountByProductId.entrySet()) {
            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
        }

        for (Map.Entry<Integer, Double> entry : totalRevenueByProductId.entrySet()) {
            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
        }

//        System.out.println(db.getRevenueGrowth());
//        System.out.println(db.getOrderGrowth());
//        System.out.println(db.getCustomerGrowth());
//
//        for (Map.Entry<Integer, Double> entry : monthlyRevenue.entrySet()) {
//            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
//        }
//
//        for (Map.Entry<Integer, Integer> entry : ordersByMonth.entrySet()) {
//            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
//        }
//
//        for (Map.Entry<Integer, Integer> entry : customersByMonth.entrySet()) {
//            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
//        }
    }

}
