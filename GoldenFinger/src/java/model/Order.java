package model;

/**
 *
 * @author nhudi
 */
public class Order {
    private int id;
    private String username;
    private String Date;
    private int status;
    private int userId;

    public Order(int id, String username, String Date, int status, int userId) {
        this.id = id;
        this.username = username;
        this.Date = Date;
        this.status = status;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

   
    
    
    
}
