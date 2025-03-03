package dal;

import util.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author nhudi
 */
public class ProductDAO extends DBConnect {

    public ArrayList<Product> getAllProductByCid(int cid) {
        ArrayList<Product> listProduct = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();
        if (connection != null) {
            try {
                StringBuilder sqlQuery = new StringBuilder("SELECT * FROM Products WHERE 1=1");
                if (cid != 0) {
                    sqlQuery.append(" AND CategoryID = ").append(cid);
                }
                PreparedStatement stm = connection.prepareStatement(sqlQuery.toString());
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

    public ArrayList<String> getImage(String str) {
        String[] word = str.split("[, ]+");
        ArrayList<String> res = new ArrayList<>();
        for (int i = 0; i < word.length; i++) {
            res.add(word[i]);
        }
        return res;
    }

    // DAY OF THE DEAL - top 5 lowest price product
    public ArrayList<Product> getSaleProduct() {
        ArrayList<Product> listProduct = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();
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
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();
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
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();
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
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();
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

    
    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        for(Product x : p.getProductBySupplierID(1)){
            System.out.println(x.getName());
        }
    }
}
