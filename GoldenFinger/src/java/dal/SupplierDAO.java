package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import model.Supplier;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SupplierDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(SupplierDAO.class.getName());

    public List<Supplier> getAllSupplier() {
        List<Supplier> listSupplier = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listSupplier; // return empty list if db connection is null
        }
        String sqlQuery = "SELECT * FROM Suppliers";

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery); ResultSet res = stm.executeQuery();) {
            while (res.next()) {
                Supplier s = new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                        res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                listSupplier.add(s);
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error fetching all suppliers", e);
        }
        return listSupplier; //return empty list if have error
    }

    public Supplier getSupplierById(int id) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Suppliers WHERE SupplierID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, id);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    return new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                }
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching all suppliers", e);
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
                        + "JOIN Products P ON S.SupplierID = P.SupplierID WHERE Status = 1"
                        + "GROUP BY S.SupplierID, S.CompanyName, S.Image";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    map.put(new Supplier(res.getInt(1), res.getString(2), res.getString(3)), res.getInt(4));
                }
                return map;
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching all suppliers", e);
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
                    return new Supplier(res.getInt(1), res.getString(2), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6), res.getString(7));
                }
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching all suppliers", e);
            }
        }
        return null;
    }

}
