package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

    protected Connection connection;

    public DBConnect() {
        try {
            String user = "sa";
            String pass = "123456";
            String url = "jdbc:sqlserver://LAPTOP-3EKS6U5D\\SQLEXPRESS:1433;databaseName=GoldenFinger";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}