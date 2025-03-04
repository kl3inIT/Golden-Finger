
package util;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author nhudi
 */
public class DBConnect {

    protected Connection connection;

    public DBConnect() {
        try {
            String user = "sa";
            String password = "Dat123456";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=GoldenFinger";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = (Connection) DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            System.err.println("Error");
        }
    }

    public Connection getConnection() {
        return connection;
    }

}
