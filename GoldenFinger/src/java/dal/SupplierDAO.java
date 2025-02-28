package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Supplier;

/**
 *
 * @author nhudi
 */
public class SupplierDAO extends DBConnect {

    public ArrayList<Supplier> getAllSupplier() {
        ArrayList<Supplier> listSupplier = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Suppliers";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Supplier s = new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                    listSupplier.add(s);
                }
                return listSupplier;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Supplier getSupplierById(int id) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Suppliers WHERE SupplierID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, id);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Supplier s = new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                    return s;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // GET NUMBER OF PRODUCT ALONG SUPPLIER
    public LinkedHashMap<Supplier, Integer> getNumberOfProductAlongSuplier() {
        LinkedHashMap<Supplier, Integer> map = new LinkedHashMap<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT S.SupplierID, S.CompanyName, S.Image, COUNT(P.ProductID) "
                        + "FROM Suppliers S "
                        + "JOIN Products P ON S.SupplierID = P.SupplierID "
                        + "GROUP BY S.SupplierID, S.CompanyName, S.Image";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    map.put(new Supplier(res.getInt(1), res.getString(2), res.getString(3)), res.getInt(4));
                }
                return map;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Supplier getSupplierByProductId(int pid) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT S.SupplierID, S.CompanyName, S.ContactName, S.Country, S.Phone, S.HomePage, S.Image "
                        + "FROM Suppliers S "
                        + "JOIN Products P ON S.SupplierID = P.SupplierID "
                        + "WHERE P.ProductID = ?;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, pid);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Supplier s = new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                    return s;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

}
