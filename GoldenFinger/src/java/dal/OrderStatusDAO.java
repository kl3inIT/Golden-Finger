package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.OrderStatus;
import util.DBConnect;

/**
 *
 * @author nhudi
 */
public class OrderStatusDAO extends DBConnect {

    public OrderStatus getOrderStatusByOrderId(int orderId) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT OS.StatusID, OS.StatusName "
                        + "FROM OrderStatus OS "
                        + "JOIN Orders O ON OS.StatusID = O.StatusID "
                        + "WHERE O.OrderID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, orderId);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    OrderStatus os = new OrderStatus();
                    os.setId(res.getInt(1));
                    os.setStatusName(res.getString(2));
                    return os;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
}
