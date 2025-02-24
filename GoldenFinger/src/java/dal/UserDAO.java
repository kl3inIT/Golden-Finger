package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author nhudi
 */
public class UserDAO extends DBConnect{

    public User getUser(String username, String password){
        if(connection != null){
            try {
                String sqlQuery = "SELECT * FROM Users WHERE Username = ? AND Password = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setString(1, username);
                stm.setString(2, password);
                ResultSet res = stm.executeQuery();
                if(res.next()){
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
}
