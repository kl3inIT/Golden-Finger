package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;

public class UserDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(UserDAO.class.getName());

    public User getUser(String username, String password) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return null;
        }

        String sql = "SELECT * FROM Users WHERE Username = ? AND Password = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, username);
            stm.setString(2, password);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("UserID"));
                    user.setUsername(rs.getString("UserName"));
                    user.setFullName(rs.getString("FullName"));
                    user.setPassword(rs.getString("Password"));
                    user.setRoleId(rs.getInt("RoleID"));
                    user.setImage(rs.getString("Image"));
                    user.setEmail(rs.getString("Email"));
                    user.setBirthDate(rs.getString("BirthDay"));
                    user.setAddress(rs.getString("Address"));
                    user.setPhone(rs.getString("Phone"));
                    user.setStatus(rs.getInt("status"));
                    return user;
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error getting user", e);
        }
        return null;
    }

    public boolean isAccountExists(String username, String email, String phone) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return true; // Assume account exists to avoid registering on error
        }

        String sql = "SELECT * FROM Users WHERE UserName = ? OR Email = ? OR Phone = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, username);
            stm.setString(2, email);
            stm.setString(3, phone);

            try (ResultSet rs = stm.executeQuery()) {
                return rs.next(); // return true if account is exist
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error checking account existence", e);
            return true; // Assume account exists to avoid registering on error
        }
    }
    
    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        System.out.println(dao.isAccountExists("nhat", "nhudinhnhat2004@gmail.co", "098222637"));
    }

    public boolean createUser(String username, String fullName, String password, String email, String phone, String birthDate, String address) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        String sql = "INSERT INTO Users(Username, FullName, Password, Email, BirthDay, Address, Phone, RoleID, Status) VALUES (?, ?, ?, ?, ?, ?, ?, 2, 1)";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, username);
            stm.setString(2, fullName);
            stm.setString(3, password); // Nên mã hóa mật khẩu
            stm.setString(4, email);
            stm.setString(5, birthDate);
            stm.setString(6, address);
            stm.setString(7, phone);

            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error creating user", e);
            return false;
        }
    }
}
