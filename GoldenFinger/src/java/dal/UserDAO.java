package dal;

import utils.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;
import utils.PasswordUtils;

public class UserDAO extends DBConnect {

    private static final Logger LOGGER = Logger.getLogger(UserDAO.class.getName());

    public User getUser(String username) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return null;
        }

        String sql = "SELECT * FROM Users WHERE Username = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, username);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("UserID"));
                    user.setUsername(rs.getString("UserName"));
                    user.setFullName(rs.getString("FullName"));
                    user.setPassword(rs.getString("Password"));
                    user.setSalt(rs.getString("Salt"));
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
//        UserDAO dao = new UserDAO();
//        System.out.println(dao.isAccountExists("nhat", "nhudinhnhat2004@gmail.co", "098222637"));
        String salt = PasswordUtils.generateSalt();
        System.out.println(salt);
    }

    public boolean createUser(String username, String fullName, String password, String email, String phone, String birthDate, String address) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        // Generate salt and hash password with SHA-256
        String salt = PasswordUtils.generateSalt();
        String hashedPassword = PasswordUtils.hashPassword(password, salt);

        String sql = "INSERT INTO Users(Username, FullName, Password, Salt, Email, BirthDay, Address, Phone, RoleID, Status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 1, 1)";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, username);
            stm.setString(2, fullName);
            stm.setString(3, hashedPassword);
            stm.setString(4, salt);
            stm.setString(5, email);
            stm.setString(6, birthDate);
            stm.setString(7, address);
            stm.setString(8, phone);

            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error creating user", e);
            return false;
        }
    }

    public boolean updatePassword(String username, String newPassword) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return false;
        }

        // Generate new salt and hash new password with SHA-256
        String salt = PasswordUtils.generateSalt();
        String hashedPassword = PasswordUtils.hashPassword(newPassword, salt);

        String sql = "UPDATE Users SET Password = ?, Salt = ? WHERE Username = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, hashedPassword);
            stm.setString(2, salt);
            stm.setString(3, username);

            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error updating password", e);
            return false;
        }
    }

    public User getUserByEmail(String email) {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return null;
        }

        String sql = "SELECT * FROM Users WHERE Email = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, email);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("UserID"));
                    user.setUsername(rs.getString("UserName"));
                    user.setFullName(rs.getString("FullName"));
                    user.setPassword(rs.getString("Password"));
                    user.setSalt(rs.getString("Salt"));
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
            LOGGER.log(Level.SEVERE, "Error getting user by email", e);
        }
        return null;
    }

}
