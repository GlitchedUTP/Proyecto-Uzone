package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
    private int id;
    private String username;
    private String password;
    private String name;
    private String lastName;
    private String email;
    private String birthDate;
    private char genre;
    private String phone;
    private String picture;
    private UserType userType;
    private Information information;

    public User() {
    }

    public User(int id, String username, String password, String name, String lastName, String email, String birthDate, char genre, String phone, String picture, UserType userType, Information information) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.birthDate = birthDate;
        this.genre = genre;
        this.phone = phone;
        this.picture = picture;
        this.userType = userType;
        this.information = information;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    public char getGenre() {
        return genre;
    }

    public void setGenre(char genre) {
        this.genre = genre;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public Information getInformation() {
        return information;
    }

    public void setInformation(Information information) {
        this.information = information;
    }

    public static User from (ResultSet rs, UserTypesEntity userTypesEntity, InformationsEntity informationsEntity) {
        User user=new User();
        try {
            user.setId(rs.getInt("user_id"));
            user.setUsername(rs.getString("user_username"));
            user.setPassword(rs.getString("user_password"));
            user.setName(rs.getString("user_name"));
            user.setLastName(rs.getString("user_lastName"));
            user.setEmail(rs.getString("user_email"));
            user.setBirthDate(rs.getDate("user_birthdate").toString());
            user.setGenre(rs.getString("user_genre").charAt(0));
            user.setPhone(rs.getString("user_phone"));
            user.setPicture(rs.getString("user_picture"));
            user.setUserType(userTypesEntity.findById(rs.getInt("usertype_id")));
            user.setInformation(informationsEntity.findById(rs.getInt("info_id")));
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
