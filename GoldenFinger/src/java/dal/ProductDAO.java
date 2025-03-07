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
                Product p = mapResultSetToProduct(res);
                listProduct.add(p);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }

        return listProduct; // return List of products matching the category, or empty list if error occurs
    }

    private Product mapResultSetToProduct(ResultSet res) throws SQLException {
        return new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                res.getString(7), res.getString(8), res.getString(9),
                res.getString(10), res.getFloat(11), res.getString(12),
                res.getString(13), res.getString(14), res.getFloat(15),
                res.getInt(16), cd.getCategoryById(res.getInt(17)),
                sd.getSupplierById(res.getInt(1)));
    }

    public ArrayList<String> getImage(String str) {
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

        try {
            String sqlQuery = "SELECT TOP 10 * FROM Products ORDER BY ProductID DESC;";
            PreparedStatement stm = connection.prepareStatement(sqlQuery);
            ResultSet res = stm.executeQuery();
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
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Products WHERE SupplierID = ?;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, sid);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Product p = new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                            res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                            res.getString(7), res.getString(8), res.getString(9),
                            res.getString(10), res.getFloat(11), res.getString(12),
                            res.getString(13), res.getString(14), res.getFloat(15),
                            res.getInt(16), cd.getCategoryById(res.getInt(17)),
                            sd.getSupplierById(res.getInt(1)));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching products", e);
            }
        }
        return null;
    }

    public Product getProductById(int pid) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Products WHERE ProductID = ?;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, pid);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    return new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                            res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                            res.getString(7), res.getString(8), res.getString(9),
                            res.getString(10), res.getFloat(11), res.getString(12),
                            res.getString(13), res.getString(14), res.getFloat(15),
                            res.getInt(16), cd.getCategoryById(res.getInt(17)),
                            sd.getSupplierById(res.getInt(1)));
                }
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error fetching products", e);
            }
        }
        return null;
    }

    // Gets total number of products in database
    public int getTotalProduct() {
        String sql = "SELECT COUNT(*) FROM Products ";

        if (connection == null) {
            LOGGER.log(Level.WARNING, "Database connection is null");
            return 0;
        }

        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error counting products", e);
        }

        return 0; //return total number of products, or 0 if error occurs
    }

    // Get products for a specific page
    public List<Product> pagingProduct(int index) { //param index page number
        List<Product> listProduct = new ArrayList<>();
        String sql = "SELECT * FROM Products ORDER BY ProductID OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";

        if (connection == null) {
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct;
        }

        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setInt(1, (index - 1) * 3);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Product p = new Product(
                            rs.getInt(1), rs.getString(2), rs.getFloat(3),
                            rs.getInt(4), rs.getInt(5), getImage(rs.getString(6)),
                            rs.getString(7), rs.getString(8), rs.getString(9),
                            rs.getString(10), rs.getFloat(11), rs.getString(12),
                            rs.getString(13), rs.getString(14), rs.getFloat(15),
                            rs.getInt(16), cd.getCategoryById(rs.getInt(17)),
                            sd.getSupplierById(rs.getInt(1))
                    );
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products for page", e);
        }

        return listProduct; //return List of products for the specified page 
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        int maxPrice = dao.getMaxPrice();
        System.out.println(maxPrice);
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
                    Product p = new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                            res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                            res.getString(7), res.getString(8), res.getString(9),
                            res.getString(10), res.getFloat(11), res.getString(12),
                            res.getString(13), res.getString(14), res.getFloat(15),
                            res.getInt(16), cd.getCategoryById(res.getInt(17)),
                            sd.getSupplierById(res.getInt(1)));
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return listProduct; // return List of products or empty list if error occurs
    }

    public List<Product> getProductsWithSort(int cid, int sid, int sort) {
        List<Product> listProduct = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM Products WHERE 1=1");

        // Thêm điều kiện category nếu có
        if (cid > 0) {
            sql.append(" AND CategoryID = ?");
        }

        if (sid > 0) {
            sql.append(" AND SupplierID = ?");
        }

        // Thêm điều kiện sắp xếp
        switch (sort) {
            case 1: // Position
                sql.append(" ORDER BY ProductID");
                break;
            case 2: // Name, A to Z
                sql.append(" ORDER BY ProductName ASC");
                break;
            case 3: // Name, Z to A
                sql.append(" ORDER BY ProductName DESC");
                break;
            case 4: // Price, low to high
                sql.append(" ORDER BY (UnitPrice * (1 - Discount)) ASC");
                break;
            case 5: // Price, high to low
                sql.append(" ORDER BY (UnitPrice * (1 - Discount)) DESC");
                break;
            default:
                // default sort by id
                sql.append(" ORDER BY ProductID");
        }

        try (PreparedStatement stm = connection.prepareStatement(sql.toString())) {
            // Set category ID nếu có
            if (cid > 0) {
                stm.setInt(1, cid);
            }

            if (sid > 0) {
                stm.setInt(1, sid);
            }

            try (ResultSet res = stm.executeQuery()) {
                while (res.next()) {
                    Product p = new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                            res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                            res.getString(7), res.getString(8), res.getString(9),
                            res.getString(10), res.getFloat(11), res.getString(12),
                            res.getString(13), res.getString(14), res.getFloat(15),
                            res.getInt(16), cd.getCategoryById(res.getInt(17)),
                            sd.getSupplierById(res.getInt(1)));
                    listProduct.add(p);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching products with sort", e);
        }
        return listProduct;
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

    // Add method to get total filtered products for pagination
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

    public List<Product> getFilteredProducts(int cid, int sid, int minPrice, int maxPrice, int sort, int page, int productPerPage) {
        List<Product> listProduct = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM Products WHERE 1=1");

        // Add category filter
        if (cid > 0) {
            sql.append(" AND CategoryID = ?");
        }

        // supplier filter
        if (sid > 0) {
            sql.append(" OR SupplierID = ?");
        }

        // Add price range filter
        if (minPrice > 0) {
            sql.append(" AND UnitPrice >= ?");
        }
        if (maxPrice < getMaxPrice()) {
            sql.append(" AND UnitPrice <= ?");
        }

        // Add sorting
        switch (sort) {
            case 1: // Position
                sql.append(" ORDER BY ProductID");
                break;
            case 2: // Name, A to Z
                sql.append(" ORDER BY ProductName ASC");
                break;
            case 3: // Name, Z to A
                sql.append(" ORDER BY ProductName DESC");
                break;
            case 4: // Price, low to high
                sql.append(" ORDER BY (UnitPrice * (1 - Discount)) ASC");
                break;
            case 5: // Price, high to low
                sql.append(" ORDER BY (UnitPrice * (1 - Discount)) DESC");
                break;
            default:
                // default sort by id
                sql.append(" ORDER BY ProductID");
        }

        // Add pagination
        sql.append(" OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");

        try (PreparedStatement stm = connection.prepareStatement(sql.toString())) {
            stm.setInt(1, cid);
            stm.setInt(2, sid);
            stm.setInt(3, minPrice);
            stm.setInt(4, maxPrice);
            stm.setInt(5, (page - 1) * productPerPage);

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

}
