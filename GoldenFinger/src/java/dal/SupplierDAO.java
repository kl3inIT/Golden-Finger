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
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class SupplierDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(SupplierDAO.class.getName());

    // Giữ nguyên các phương thức hiện có
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
                LOGGER.log(Level.SEVERE, "Error fetching supplier by ID", e);
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
                        + "JOIN Products P ON S.SupplierID = P.SupplierID WHERE Status = 1 "
                        + "GROUP BY S.SupplierID, S.CompanyName, S.Image";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    map.put(new Supplier(res.getInt(1), res.getString(2), res.getString(3)), res.getInt(4));
                }
                return map;
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching product count by supplier", e);
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
                LOGGER.log(Level.SEVERE, "Error fetching supplier by product ID", e);
            }
        }
        return null;
    }

    // Bổ sung các phương thức mới
    public boolean addSupplier(Supplier supplier) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        String sql = "INSERT INTO Suppliers (CompanyName, ContactName, Country, Phone, HomePage, Image) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, supplier.getCompanyName());
            ps.setString(2, supplier.getContactName());
            ps.setString(3, supplier.getCountry());
            ps.setString(4, supplier.getPhone());
            ps.setString(5, supplier.getHomePage());
            ps.setString(6, supplier.getImage());

            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        supplier.setId(generatedKeys.getInt(1));
                    }
                }
                LOGGER.info("Supplier added successfully: " + supplier.getCompanyName());
                return true;
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error adding new supplier: " + supplier.getCompanyName(), e);
        }

        return false;
    }

    public boolean updateSupplier(Supplier supplier) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        String sql = "UPDATE Suppliers SET CompanyName = ?, ContactName = ?, Country = ?, "
                + "Phone = ?, HomePage = ?, Image = ? WHERE SupplierID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, supplier.getCompanyName());
            ps.setString(2, supplier.getContactName());
            ps.setString(3, supplier.getCountry());
            ps.setString(4, supplier.getPhone());
            ps.setString(5, supplier.getHomePage());
            ps.setString(6, supplier.getImage());
            ps.setInt(7, supplier.getId());

            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                LOGGER.info("Supplier updated successfully: " + supplier.getCompanyName());
                return true;
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error updating supplier: " + supplier.getId(), e);
        }

        return false;
    }

    public boolean deleteSupplier(int id) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        // First check if this supplier is being used in any products
        String checkSql = "SELECT COUNT(*) FROM Products WHERE SupplierID = ?";
        try (PreparedStatement checkPs = connection.prepareStatement(checkSql)) {
            checkPs.setInt(1, id);

            try (ResultSet rs = checkPs.executeQuery()) {
                if (rs.next() && rs.getInt(1) > 0) {
                    // Supplier is in use, cannot delete
                    LOGGER.warning("Cannot delete supplier ID " + id + " because it is used by products");
                    return false;
                }
            }

            // If not in use, proceed with deletion
            String deleteSql = "DELETE FROM Suppliers WHERE SupplierID = ?";
            try (PreparedStatement deletePs = connection.prepareStatement(deleteSql)) {
                deletePs.setInt(1, id);

                int affectedRows = deletePs.executeUpdate();

                if (affectedRows > 0) {
                    LOGGER.info("Supplier deleted successfully: " + id);
                    return true;
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error deleting supplier: " + id, e);
        }

        return false;
    }

    public Map<Integer, String> getSupplierNamesMap() {
        Map<Integer, String> supplierNames = new HashMap<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return supplierNames;
        }

        String sql = "SELECT SupplierID, CompanyName FROM Suppliers";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int supplierId = rs.getInt("SupplierID");
                String supplierName = rs.getString("CompanyName");
                supplierNames.put(supplierId, supplierName);
            }

            return supplierNames;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching supplier names map", e);
            return supplierNames;
        }
    }

    public int getProductCountBySupplier(int supplierId) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT COUNT(*) FROM Products WHERE SupplierID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, supplierId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error counting products by supplier: " + supplierId, e);
        }

        return 0;
    }
}
