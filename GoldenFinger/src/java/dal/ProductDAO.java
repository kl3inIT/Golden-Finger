package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
            sqlQuery.append(" AND CategoryID = ").append(cid);
        }

        try (PreparedStatement stm = connection.prepareStatement(sqlQuery.toString()); ResultSet res = stm.executeQuery()) { //try with resourse (auto close)
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
            LOGGER.log(Level.SEVERE, "Error fetching products", e);
        }
        return listProduct; // return List of products matching the category, or empty list if error occurs
    }

    public ArrayList<String> getImage(String str) {
        String[] word = str.split("[, ]+");
        ArrayList<String> res = new ArrayList<>();
        for (int i = 0; i < word.length; i++) {
            res.add(word[i]);
        }
        return res;
    }

    public ArrayList<Product> getSaleProduct() {
        ArrayList<Product> listProduct = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT TOP 5 * FROM Products ORDER BY UnitPrice * Discount;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // NEW ARRIVALS - TOP 10 PRODUCT HAVE HIGHTEST ID 
    public ArrayList<Product> getNewProduct() {
        ArrayList<Product> listProduct = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT TOP 10 * FROM Products ORDER BY ProductID DESC;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // GET NUMBER OF PRODUCT BY SUPPLIER ID
    public ArrayList<Product> getProductBySupplierID(int sid) {
        ArrayList<Product> listProduct = new ArrayList<>();
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
            } catch (Exception e) {
                e.printStackTrace();
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
                    Product p = new Product(res.getInt(1), res.getString(2), res.getFloat(3),
                            res.getInt(4), res.getInt(5), getImage(res.getString(6)),
                            res.getString(7), res.getString(8), res.getString(9),
                            res.getString(10), res.getFloat(11), res.getString(12),
                            res.getString(13), res.getString(14), res.getFloat(15),
                            res.getInt(16), cd.getCategoryById(res.getInt(17)),
                            sd.getSupplierById(res.getInt(1)));
                    return p;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public int getTotalProduct() {
        String sql = "SELECT COUNT(*) FROM Products";
    }

}
