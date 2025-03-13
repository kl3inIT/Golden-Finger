package model;

public class User {

    private int id;
    private String username;
    private String fullName;
    private String password;
    private String salt;
    private int roleId;
    private String image;
    private String email;
    private String birthDate;
    private String address;
    private String phone;
    private int status;
    
    //ALTER TABLE Users 
//ALTER COLUMN Password VARCHAR(100);
//
//ALTER TABLE Users 
//ADD Salt VARCHAR(100);


    public User() {
    }

    public User(int id, String username, String fullName, String password, String salt, int roleId, String image, String email, String birthDate, String address, String phone, int status) {
        this.id = id;
        this.username = username;
        this.fullName = fullName;
        this.password = password;
        this.salt = salt;
        this.roleId = roleId;
        this.image = image;
        this.email = email;
        this.birthDate = birthDate;
        this.address = address;
        this.phone = phone;
        this.status = status;
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
