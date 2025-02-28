package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Category;

/**
 *
 * @author nhudi
 */
public class CategoryDAO extends DBConnect {

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> listCategory = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Categories";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Category c = new Category(res.getInt(1), res.getString(2), res.getString(3));
                    listCategory.add(c);
                }
                return listCategory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Category getCategoryById(int id) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Categories WHERE CategoryID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, id);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Category c = new Category(res.getInt(1), res.getString(2), res.getString(3));
                    return c;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Category getCategoryByProductId(int pid) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT C.CategoryID, C.CategoryName, C.Description "
                        + "FROM Categories C "
                        + "JOIN Products P ON C.CategoryID = P.CategoryID "
                        + "WHERE P.ProductID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, pid);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Category c = new Category(res.getInt(1), res.getString(2), res.getString(3));
                    return c;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

}
