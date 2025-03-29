package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Category;
import java.util.List;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CategoryDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(CategoryDAO.class.getName());

    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return categories;
        }

        String sql = "SELECT * FROM Categories ORDER BY CategoryID";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("CategoryID"));
                category.setName(rs.getString("CategoryName"));
                category.setDescription(rs.getString("Description"));
                categories.add(category);
            }

            return categories;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching all categories", e);
            return categories;
        }
    }

    public Category getCategoryById(int id) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return null;
        }

        String sql = "SELECT * FROM Categories WHERE CategoryID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Category category = new Category();
                    category.setId(rs.getInt("CategoryID"));
                    category.setName(rs.getString("CategoryName"));
                    category.setDescription(rs.getString("Description"));
                    return category;
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching category by ID: " + id, e);
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
                    return new Category(res.getInt(1), res.getString(2), res.getString(3));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean addCategory(Category category) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        String sql = "INSERT INTO Categories (CategoryName, Description) VALUES (?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, category.getName());
            ps.setString(2, category.getDescription());

            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        category.setId(generatedKeys.getInt(1));
                    }
                }
                LOGGER.info("Category added successfully: " + category.getName());
                return true;
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error adding new category: " + category.getName(), e);
        }

        return false;
    }

    public boolean updateCategory(Category category) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        String sql = "UPDATE Categories SET CategoryName = ?, Description = ? WHERE CategoryID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, category.getName());
            ps.setString(2, category.getDescription());
            ps.setInt(3, category.getId());

            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                LOGGER.info("Category updated successfully: " + category.getName());
                return true;
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error updating category: " + category.getId(), e);
        }

        return false;
    }

    public boolean deleteCategory(int id) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        // First check if this category is being used in any products
        String checkSql = "SELECT COUNT(*) FROM Products WHERE CategoryID = ?";
        try (PreparedStatement checkPs = connection.prepareStatement(checkSql)) {
            checkPs.setInt(1, id);

            try (ResultSet rs = checkPs.executeQuery()) {
                if (rs.next() && rs.getInt(1) > 0) {
                    // Category is in use, cannot delete
                    LOGGER.warning("Cannot delete category ID " + id + " because it is used by products");
                    return false;
                }
            }

            // If not in use, proceed with deletion
            String deleteSql = "DELETE FROM Categories WHERE CategoryID = ?";
            try (PreparedStatement deletePs = connection.prepareStatement(deleteSql)) {
                deletePs.setInt(1, id);

                int affectedRows = deletePs.executeUpdate();

                if (affectedRows > 0) {
                    LOGGER.info("Category deleted successfully: " + id);
                    return true;
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error deleting category: " + id, e);
        }

        return false;
    }

    public Map<Integer, String> getCategoryNamesMap() {
        Map<Integer, String> categoryNames = new HashMap<>();

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return categoryNames;
        }

        String sql = "SELECT CategoryID, CategoryName FROM Categories";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int categoryId = rs.getInt("CategoryID");
                String categoryName = rs.getString("CategoryName");
                categoryNames.put(categoryId, categoryName);
            }

            return categoryNames;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching category names map", e);
            return categoryNames;
        }
    }

    public int getProductCountByCategory(int categoryId) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT COUNT(*) FROM Products WHERE CategoryID = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, categoryId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error counting products by category: " + categoryId, e);
        }

        return 0;
    }

    public static void main(String[] args) {
        // Test the DAO methods
        CategoryDAO dao = new CategoryDAO();

        // Test getAllCategories
        List<Category> categories = dao.getAllCategory();
        System.out.println("All categories:");
        for (Category c : categories) {
            System.out.println(c.getId() + ": " + c.getName());
        }

//        // Test getCategoryById
//        if (!categories.isEmpty()) {
//            int testId = categories.get(0).getId();
//            Category category = dao.getCategoryById(testId);
//            if (category != null) {
//                System.out.println("\nCategory by ID " + testId + ": " + category.getCategoryName());
//            }
//        }
//
//        // Test getCategoryNamesMap
//        Map<Integer, String> categoryNames = dao.getCategoryNamesMap();
//        System.out.println("\nCategory names map:");
//        for (Map.Entry<Integer, String> entry : categoryNames.entrySet()) {
//            System.out.println(entry.getKey() + ": " + entry.getValue());
//        }
    }

}
