package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

public class ProductDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(ProductDAO.class.getName());
    private CategoryDAO cd = new CategoryDAO();
    private SupplierDAO sd = new SupplierDAO();

    // Gets all products by category ID 
    public List<Product> getAllProductByCid(int cid) { // param cid Category ID (0 for all categories)
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        StringBuilder sqlQuery = new StringBuilder("SELECT * FROM Products WHERE 1=1"); // always true (all product)

        if (cid != 0) {
            sqlQuery.append(" AND CategoryID = ?");
        }

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery.toString())) {
            if (cid != 0) {
                stm.setInt(1, cid);
            }

            try (ResultSet res = stm.executeQuery()) {
                while (res.next()) {
                    Product p = mapResultSetToProduct(res);
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }

        return listProduct; // return List of products matching the category, or empty list if error occurs
    }
    

    private Product mapResultSetToProduct(ResultSet res) throws SQLException {
        return new Product(res.getInt("ProductID"), res.getString("ProductName"), res.getFloat("UnitPrice"),
                res.getInt("UnitsInStock"), res.getInt("Discontinued"), getImage(res.getString("Image")),
                res.getString("Include"), res.getString("Warranty"), res.getString("Dimensions"),
                res.getString("SpeakerPower"), res.getFloat("StarRating"), res.getString("Weight"),
                res.getString("Describe"), res.getString("ReleaseDate"), res.getFloat("Discount"),
                res.getInt("Status"), cd.getCategoryById(res.getInt("CategoryID")),
                sd.getSupplierById(res.getInt("SupplierID")));
    }

    private ArrayList<String> getImage(String str) {
        String[] word = str.split("[, ]+");

        ArrayList<String> listImage = new ArrayList<>();
        listImage.addAll(Arrays.asList(word));
        return listImage;
    }

    public List<Product> getSaleProduct() {
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        String sqlQuery = "SELECT TOP 5 * FROM Products ORDER BY UnitPrice * Discount;";

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery); ResultSet res = stm.executeQuery()) {

            while (res.next()) {
                Product p = mapResultSetToProduct(res);
                listProduct.add(p);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }

        return listProduct;
    }

    // NEW ARRIVALS - TOP 10 PRODUCT HAVE HIGHTEST ID 
    public List<Product> getNewProduct() {
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        String sqlQuery = "SELECT TOP 10 * FROM Products ORDER BY ProductID DESC";

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery); ResultSet res = stm.executeQuery()) {

            while (res.next()) {
                Product p = mapResultSetToProduct(res);
                listProduct.add(p);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return listProduct;
    }

    // GET NUMBER OF PRODUCT BY SUPPLIER ID
    public List<Product> getProductBySupplierID(int sid) {

        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        String sqlQuery = "SELECT * FROM Products WHERE SupplierID = ?";

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery)) {
            stm.setInt(1, sid);
            try (ResultSet res = stm.executeQuery()) {
                while (res.next()) {
                    Product p = mapResultSetToProduct(res);
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return listProduct;
    }

    public Product getProductById(int pid) {

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return null; // return null if db connection is null
        }

        String sqlQuery = "SELECT * FROM Products WHERE ProductID = ?";

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery)) {
            stm.setInt(1, pid);
            try (ResultSet res = stm.executeQuery()) {
                if (res.next()) {
                    return mapResultSetToProduct(res);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return null;
    }

    // Gets all products by category name 
    public List<Product> getProductByName(String txtSearch) {
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        String sql = "SELECT * FROM Products WHERE ProductName LIKE ?";

        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, "%" + txtSearch + "%");

            try (ResultSet res = stm.executeQuery()) {
                while (res.next()) {
                    Product p = mapResultSetToProduct(res);
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return listProduct; // return List of products or empty list if error occurs
    }

    public int getMaxPrice() {
        String sql = "SELECT TOP 1 UnitPrice FROM Products ORDER BY UnitPrice DESC";

        if (connection == null) {
            LOGGER.log(Level.WARNING, "Database connection is null");
            return 0;
        }

        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error get max price", e);
        }

        return 0; //return max price, or 0 if error occurs
    }

    public List<Product> getFilteredProducts(int cid, int sid, int minPrice, int maxPrice, int sort, int page, int productPerPage) {
        List<Product> listProduct = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM Products WHERE 1=1");
        List<Object> params = new ArrayList<>();

        // category filter
        if (cid > 0) {
            sql.append(" AND CategoryID = ?");
            params.add(cid);
        }

        // supplier filter
        if (sid > 0) {
            sql.append(" AND SupplierID = ?");
            params.add(sid);
        }

        // price range filter
        if (minPrice > 0) {
            sql.append(" AND UnitPrice >= ?");
            params.add(minPrice);
        }

        if (maxPrice < getMaxPrice()) {
            sql.append(" AND UnitPrice <= ?");
            params.add(maxPrice);
        }

        // Add sorting
        switch (sort) {
            case 1:
                sql.append(" ORDER BY ProductID");
                break;
            case 2:
                sql.append(" ORDER BY ProductName ASC");
                break;
            case 3:
                sql.append(" ORDER BY ProductName DESC");
                break;
            case 4:
                sql.append(" ORDER BY UnitPrice ASC");
                break;
            case 5:
                sql.append(" ORDER BY UnitPrice DESC");
                break;
            default:
                sql.append(" ORDER BY ProductID");
        }

        // pagination
        sql.append(" OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
        params.add((page - 1) * productPerPage);
        params.add(productPerPage);

        try (PreparedStatement stm = connection.prepareStatement(sql.toString())) {
            // Set parameters using the params list
            for (int i = 0; i < params.size(); i++) {
                stm.setObject(i + 1, params.get(i));
            }

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    listProduct.add(mapResultSetToProduct(rs));
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error filtering products", e);
        }

        return listProduct;
    }

    public int getTotalFilteredProducts(int cid, int sid, int minPrice, int maxPrice) {
        StringBuilder sql = new StringBuilder("SELECT COUNT(*) FROM Products WHERE 1=1");
        List<Object> params = new ArrayList<>();

        if (cid > 0) {
            sql.append(" AND CategoryID = ?");
            params.add(cid);
        }

        if (sid > 0) {
            sql.append(" AND SupplierID = ?");
            params.add(sid);
        }

        if (minPrice > 0) {
            sql.append(" AND UnitPrice >= ?");
            params.add(minPrice);
        }
        if (maxPrice < getMaxPrice()) {
            sql.append(" AND UnitPrice <= ?");
            params.add(maxPrice);
        }

        try (PreparedStatement stm = connection.prepareStatement(sql.toString())) {
            for (int i = 0; i < params.size(); i++) {
                stm.setObject(i + 1, params.get(i));
            }

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error counting filtered products", e);
        }

        return 0;
    }

    public static void main(String[] args) {
        ProductDAO pd = new ProductDAO();
        List<Product> lp = pd.getFilteredProducts(1, 2, 0, 10000, 2, 1, 3);
        for (Product product : lp) {
            System.out.println(product.getName());
        }
    }

}
