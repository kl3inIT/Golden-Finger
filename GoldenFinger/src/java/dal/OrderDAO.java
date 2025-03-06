package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Order;
import util.DBConnect;

/**
 *
 * @author nhudi
 */
public class OrderDAO extends DBConnect{

    
    public boolean isCreateOrder(int userId, String fullName, String phone, String address, String comment){
        if (connection != null){
            try {
                String sql = "INSERT INTO Orders(UserID, FullName, Phone, Address, Comment) "
                        + " VALUES (?, ?, ?, ?, ?)";
                PreparedStatement stm = connection.prepareStatement(sql);
                stm.setInt(1, userId);
                stm.setString(2, fullName);
                stm.setString(3, phone);
                stm.setString(4, address);
                stm.setString(5, comment);
                stm.execute();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
    
    
    public ArrayList<Order> getAllOrder(){
        
        if (connection != null){
            ArrayList<Order> orderList = new ArrayList<>();
            try {
                String sqlQuery = "SELECT * FROM Orders";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while(res.next()){
                    Order order = new Order();
                    order.setId(res.getInt(1));
                    order.setDate(res.getString(2));
                    order.setUserId(res.getInt(3));
                    order.setStatus(res.getInt(4));
                    order.setFullName(res.getString(5));
                    order.setPhone(res.getString(6));
                    order.setAddress(res.getString(7));
                    order.setComment(res.getString(8));
                }
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
    
}
