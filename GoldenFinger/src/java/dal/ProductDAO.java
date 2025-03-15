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

import model.Cart;

import model.Item;

import model.Product;

public class ProductDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(ProductDAO.class.getName());
    private CategoryDAO cd = new CategoryDAO();
    private SupplierDAO sd = new SupplierDAO();

    // Gets all products by category ID 
    public List<Product> getAllProductByCidForUser(int cid) { // param cid Category ID (0 for all categories)
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        StringBuilder sqlQuery = new StringBuilder("SELECT * FROM Products WHERE 1=1 AND Status = 1 "); // always true (all product)

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

    // Gets all products by category ID 
    public List<Product> getAllProductByCid(int cid) { // param cid Category ID (0 for all categories)
        List<Product> listProduct = new ArrayList<>();

        if (connection == null) { // check db connection
            LOGGER.log(Level.WARNING, "Database connection is null");
            return listProduct; // return empty list if db connection is null
        }

        StringBuilder sqlQuery = new StringBuilder("SELECT * FROM Products WHERE 1=1 "); // always true (all product)

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

        String sqlQuery = "SELECT TOP 5 * FROM Products WHERE Status = 1 ORDER BY UnitPrice * Discount;";

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

        String sqlQuery = "SELECT TOP 10 * FROM Products WHERE Status = 1 ORDER BY ProductID DESC";

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

        String sqlQuery = "SELECT * FROM Products WHERE SupplierID = ? WHERE Status = 1";

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

        String sql = "SELECT * FROM Products WHERE ProductName LIKE ? AND Status = 1";

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
        StringBuilder sql = new StringBuilder("SELECT * FROM Products WHERE 1=1 AND Status = 1 ");
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
            sql.append(" AND UnitPrice * (1 - Discount) >= ?");
            params.add(minPrice);
        }

        if (maxPrice < getMaxPrice()) {
            sql.append(" AND UnitPrice * (1 - Discount) <= ?");
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
                sql.append(" ORDER BY UnitPrice * (1 - Discount) ASC");
                break;
            case 5:
                sql.append(" ORDER BY UnitPrice * (1 - Discount) DESC");
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
            sql.append(" AND UnitPrice * (1 - Discount) >= ?");
            params.add(minPrice);
        }
        if (maxPrice < getMaxPrice()) {
            sql.append(" AND UnitPrice * (1 - Discount) <= ?");
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

    public void updateUnitInStock(Cart cart) {
        if (connection != null) {
            try {
                String sql = "UPDATE Products "
                        + " SET UnitsInStock = UnitsInStock - ? "
                        + " WHERE ProductID  = ?;";
                PreparedStatement stm = connection.prepareStatement(sql);

                for (Item i : cart.getListItems()) {
                    stm.setInt(1, i.getQuantity());
                    stm.setInt(2, i.getProduct().getId());
                    stm.execute();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    // Top 6 Products selling in 2 month

    public List<Product> getTrendingProducts() {
        List<Product> listProduct = new ArrayList<>();
        String sql = "SELECT \n"
                + "    P.ProductID, P.ProductName, P.UnitPrice, P.UnitsInStock, \n"
                + "    P.Discontinued, P.Image, P.Include, P.Warranty, \n"
                + "    P.Dimensions, P.SpeakerPower, P.StarRating, P.Weight, \n"
                + "    CAST(P.Describe AS NVARCHAR(MAX)) AS Describe, \n"
                + "    P.ReleaseDate, P.Discount, P.Status, P.CategoryID, P.SupplierID, \n"
                + "    SUM(OD.Quantity) AS TotalSold\n"
                + "FROM Products P\n"
                + "JOIN OrderDetails OD ON P.ProductID = OD.ProductID\n"
                + "JOIN Orders O ON OD.OrderID = O.OrderID\n"
                + "WHERE O.Date >= DATEADD(MONTH, -2, GETDATE()) AND Status = 1  -- Lọc đơn hàng trong 2 tháng gần nhất\n"
                + "GROUP BY \n"
                + "    P.ProductID, P.ProductName, P.UnitPrice, P.UnitsInStock, \n"
                + "    P.Discontinued, P.Image, P.Include, P.Warranty, \n"
                + "    P.Dimensions, P.SpeakerPower, P.StarRating, P.Weight, \n"
                + "    CAST(P.Describe AS NVARCHAR(MAX)), \n"
                + "    P.ReleaseDate, P.Discount, P.Status, P.CategoryID, P.SupplierID\n"
                + "ORDER BY TotalSold DESC;\n"
                + "";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet res = ps.executeQuery()) {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    //Top 6 Products with hight rating
    public List<Product> getTopRatedProducts() {
        List<Product> listProduct = new ArrayList<>();
        String sql = "SELECT TOP 6 P.*\n"
                + "FROM Products P\n"
                + "ORDER BY P.StarRating DESC;";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet res = ps.executeQuery()) {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    //Top 6 Products selling
    public List<Product> getTopSellingProducts() {
        List<Product> listProduct = new ArrayList<>();
        String sql = "SELECT TOP 6\n"
                + "    P.ProductID, P.ProductName, P.UnitPrice, P.UnitsInStock, \n"
                + "    P.Discontinued, P.Image, P.Include, P.Warranty, \n"
                + "    P.Dimensions, P.SpeakerPower, P.StarRating, P.Weight, \n"
                + "    CAST(P.Describe AS NVARCHAR(MAX)) AS Describe, \n"
                + "    P.ReleaseDate, P.Discount, P.Status, P.CategoryID, P.SupplierID, \n"
                + "    SUM(OD.Quantity) AS TotalSold\n"
                + "FROM Products P\n"
                + "JOIN OrderDetails OD ON P.ProductID = OD.ProductID\n"
                + "JOIN Orders O ON OD.OrderID = O.OrderID WHERE Status = 1 "
                + "GROUP BY \n"
                + "    P.ProductID, P.ProductName, P.UnitPrice, P.UnitsInStock, \n"
                + "    P.Discontinued, P.Image, P.Include, P.Warranty, \n"
                + "    P.Dimensions, P.SpeakerPower, P.StarRating, P.Weight, \n"
                + "    CAST(P.Describe AS NVARCHAR(MAX)), \n"
                + "    P.ReleaseDate, P.Discount, P.Status, P.CategoryID, P.SupplierID\n"
                + "ORDER BY TotalSold DESC;";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet res = ps.executeQuery()) {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    public int getHighestProductId() {
        if (connection != null) {
            try {
                String sql = "SELECT MAX(ProductID) FROM Products";
                PreparedStatement ps = connection.prepareStatement(sql);
                ResultSet res = ps.executeQuery();
                if (res.next()) {
                    return res.getInt(1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1;
    }

    public void disableStatus(String id) {
        try {
            String sql = "UPDATE Products "
                    + " SET Status = 0 "
                    + " WHERE ProductID = " + "'" + id + "'";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void enableStatus(String id) {
        try {
            String sql = "UPDATE Products "
                    + " SET Status = 1 "
                    + " WHERE ProductID = " + "'" + id + "'";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addProduct(
            String name,
            String price,
            String unitInStock,
            String discontinue,
            String image,
            String include,
            String warranty,
            String dimensions,
            String speakerPower,
            String starRating,
            String weight,
            String describe,
            String releaseDate,
            String discount,
            String status,
            String categoryId,
            String supplierId) {

        if (connection != null) {
            try {
                String sql = "INSERT INTO Products "
                        + " VALUES "
                        + " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, price);
                ps.setString(3, unitInStock);
                ps.setString(4, discontinue);
                ps.setString(5, image);
                ps.setString(6, include);
                ps.setString(7, warranty);
                ps.setString(8, dimensions);
                ps.setString(9, speakerPower);
                ps.setString(10, starRating);
                ps.setString(11, weight);
                ps.setString(12, describe);
                ps.setString(13, releaseDate);
                ps.setString(14, discount);
                ps.setString(15, status);
                ps.setString(16, categoryId);
                ps.setString(17, supplierId);
                ps.execute();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public boolean updateStatusOfProduct(int id) {
        try {
            String sql = "UPDATE Products\n"
                    + "SET Status = 0\n"
                    + "WHERE ProductID = ?;";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateProduct(
            int id,
            String name,
            String price,
            String unitInStock,
            String discontinue,
            String include,
            String warranty,
            String dimensions,
            String speakerPower,
            String starRating,
            String weight,
            String describe,
            String releaseDate,
            String discount,

            String categoryId,
            String supplierId) {
        try {
            String sql = "UPDATE Products "
                    + " SET ProductName = ?, "
                    + "    UnitPrice = ?, "
                    + "    UnitsInStock = ?, "
                    + "    Discontinued = ?, "
                    + "    Include = ?, "
                    + "    Warranty = ?, "
                    + "    Dimensions = ? , "
                    + "    SpeakerPower = ?, "
                    + "    StarRating = ? , "
                    + "    Weight = ?, "
                    + "    Describe = ?, "
                    + "    ReleaseDate = ?, "
                    + "    Discount = ?, "
                    + "    CategoryID = ?, "
                    + "    SupplierID = ? "
                    + " WHERE ProductID = ?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, unitInStock);
            ps.setString(4, discontinue);
            ps.setString(5, include);
            ps.setString(6, warranty);
            ps.setString(7, dimensions);
            ps.setString(8, speakerPower);
            ps.setString(9, starRating);
            ps.setString(10, weight);
            ps.setString(11, describe);
            ps.setString(12, releaseDate);
            ps.setString(13, discount);
 
            ps.setString(14, categoryId);
            ps.setString(15, supplierId);
            ps.setInt(16, id);
            ps.execute();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
