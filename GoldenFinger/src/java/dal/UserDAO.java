package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author nhudi
 */
public class UserDAO extends DBConnect {

    public User getUser(String username, String password) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Users WHERE Username = ? AND Password = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setString(1, username);
                stm.setString(2, password);
                ResultSet res = stm.executeQuery();
                if (res.next()) {
                    User user = new User();
                    user.setId(res.getInt(1));
                    user.setUsername(res.getString(2));
                    user.setFullName(res.getString(3));
                    user.setPassword(res.getString(4));
                    user.setRoleId(res.getInt(5));
                    user.setImage(res.getString(6));
                    user.setEmail(res.getString(7));
                    user.setBirthDate(res.getString(8));
                    user.setAddress(res.getString(9));
                    user.setPhone(res.getString(10));
                    user.setStatus(res.getInt(11));
                    return user;
                }
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    // kiem tra xem user da ton tai hay chua va tra ve message
    public boolean isValidAccount(String username, String email, String phone) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Users U WHERE U.UserName = ? OR U.Email = ? OR U.Phone = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setString(1, username);
                stm.setString(2, email);
                stm.setString(3, phone);
                ResultSet res = stm.executeQuery();
                if (res.next()) {
                    return false;
                }
            } catch (Exception e) {
                return false;
            }
        }
        return true;
    }

    public boolean createUser(String username, String fullName, String password, String email, String phone, String birhDate, String address) {
        if (connection != null) {
            try {
                String sqlQuery = "insert into Users(UserName, FullName, Password, Email, BirthDay, Address, Phone)"
                        + " values (?, ?, ?, ?, ?, ? ,?)";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setString(1, username);
                stm.setString(2, fullName);
                stm.setString(3, password);
                stm.setString(4, email);
                stm.setString(5, birhDate);
                stm.setString(6, address);
                stm.setString(7, phone);
                return stm.executeUpdate() > 0;
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }
}
