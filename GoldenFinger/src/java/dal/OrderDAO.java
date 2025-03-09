package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Cart;
import model.Order;
import utils.DBConnect;

/**
 *
 * @author nhudi
 */
public class OrderDAO extends DBConnect {

    private final OrderStatusDAO osd = new OrderStatusDAO();

    public int createOrder(int userId, String fullName, String phone, String address, String comment, Cart cart) {
        if (connection != null) {
            try {
                String sql = "INSERT INTO Orders(UserID, FullName, Phone, Address, Comment, TotalAmount) "
                        + " VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stm.setInt(1, userId);
                stm.setString(2, fullName);
                stm.setString(3, phone);
                stm.setString(4, address);
                stm.setString(5, comment);
                stm.setFloat(6, cart.getTotalAmount());
                int affectedRows = stm.executeUpdate();
                if (affectedRows > 0) {
                    ResultSet res = stm.getGeneratedKeys();
                    if (res.next()) {
                        int orderId = res.getInt(1);
                        return orderId;
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
                return -1;
            }
        }
        return -1;
    }

    public ArrayList<Order> getAllOrderByUserId(int userId) {

        if (connection != null) {
            ArrayList<Order> orderList = new ArrayList<>();
            try {
                String sqlQuery = "SELECT * FROM Orders WHERE UserId = " + userId;
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Order order = new Order();
                    order.setId(res.getInt(1));
                    order.setDate(res.getString(2));
                    order.setUserId(res.getInt(3));
                    order.setStatus(osd.getOrderStatusByOrderId(res.getInt(1)));
                    order.setFullName(res.getString(5));
                    order.setPhone(res.getString(6));
                    order.setAddress(res.getString(7));
                    order.setComment(res.getString(8));
                    order.setTotalAmount(res.getFloat(9));
                    orderList.add(order);
                }
                return orderList;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Order getOrderById(int orderId) {
        if (connection != null) {
            try {
                String sql = "SELECT * FROM Orders WHERE OrderID = " + orderId;
                PreparedStatement stm = connection.prepareStatement(sql);
                ResultSet res = stm.executeQuery();
                if (res.next()) {
                    Order order = new Order();
                    order.setId(res.getInt(1));
                    order.setDate(res.getString(2));
                    order.setUserId(res.getInt(3));
                    order.setStatus(osd.getOrderStatusByOrderId(res.getInt(1)));
                    order.setFullName(res.getString(5));
                    order.setPhone(res.getString(6));
                    order.setAddress(res.getString(7));
                    order.setComment(res.getString(8));
                    order.setTotalAmount(res.getFloat(9));
                    return order;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public void cancelOrder(int orderId) {
        if (connection != null) {
            try {
                String sql = "UPDATE Orders "
                        + " SET StatusID = 0 "
                        + " WHERE OrderID = ?";
                PreparedStatement stm = connection.prepareStatement(sql);
                stm.setInt(1, orderId);
                stm.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
