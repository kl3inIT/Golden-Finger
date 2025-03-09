package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Cart;
import model.Item;
import model.OrderDetail;
import utils.DBConnect;

/**
 *
 * @author nhudi
 */
public class OrderDetailDAO extends DBConnect {

    private final ProductDAO pd = new ProductDAO();
    private final OrderDAO od = new OrderDAO();

    public void createOrderDetail(Cart cart, int orderId) {
        if (connection != null) {
            try {
                for (Item i : cart.getListItems()) {
                    String sql = "INSERT INTO OrderDetails "
                            + "VALUES "
                            + "(?, ?, ?, ?, ?);";

                    PreparedStatement stm = connection.prepareStatement(sql);
                    stm.setInt(1, orderId);
                    stm.setInt(2, i.getProduct().getId());
                    stm.setInt(3, i.getQuantity());
                    stm.setFloat(4, i.getProduct().getPrice());
                    stm.setFloat(5, i.getProduct().getDiscount());
                    stm.execute();
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
    }

    public ArrayList<OrderDetail> getOrderDetailByOrderId(int orderId) {

        if (connection != null) {
            ArrayList<OrderDetail> orderDetailList = new ArrayList<>();
            try {
                String sqlQuery = "SELECT * FROM OrderDetails WHERE OrderID = " + orderId;
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(od.getOrderById(orderId));
                    orderDetail.setProduct(pd.getProductById(res.getInt(2)));
                    orderDetail.setQuantity(res.getInt(3));
                    orderDetail.setUnitPrice(res.getFloat(4));
                    orderDetail.setDiscount(res.getFloat(5));
                    orderDetailList.add(orderDetail);
                }
                return orderDetailList;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public float getTotalAmountByOrderId(int orderId) {
        if (connection != null) {
            float total = 0;
            try {
                String sqlQuery = "SELECT SUM((OD.UnitPrice - OD.Discount * OD.UnitPrice) * OD.Quantity) "
                        + " FROM OrderDetails OD "
                        + " WHERE OrderID = " + orderId;
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                if (res.next()) {
                    total = res.getFloat(1);
                }
                return total;
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }
}
