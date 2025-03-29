package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

    private String serverName = "localhost";
    private String dbName = "GoldenFinger";
    private String portNumber = "1433";
    private String instance = "";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private String userID = "sa";
    private String password = "Dat123456";

    protected Connection connection;

    public DBConnect() {
        try {

            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
            if (instance == null || instance.trim().isEmpty()) {
                url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            }
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, userID, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
