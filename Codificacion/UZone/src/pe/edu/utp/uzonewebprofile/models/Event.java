package pe.edu.utp.uzonewebprofile.models;


import java.sql.SQLException;
import java.sql.ResultSet;

public class Event {
    private int id;
    private int category;
    private int user;
    private double salary;
    private String picture;
    private String datetime;
    private String datelimit;
    private String description;


    public Event(int id, int user, String picture, String datetime, String datelimit, String description, int category, double salary ) {
        this.id = id;
        this.user = user;
        this.picture = picture;
        this.datetime   = datetime;
        this.datelimit = datelimit;
        this.description = description;
        this.category = category;
        this.salary = salary;

    }
    public Event() {
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public int getUser(){return user;}

    public void setUser(int user){this.user = user;}

    public int getCategory(){return category;}

    public void setCategory(int category){this.category = category;}

    public double getSalary(){return salary;}

    public void setSalary(double salary){this.salary = salary;}

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getDatelimit() { return datelimit;}

    public void setDatelimit(String datelimit) {
        this.datelimit = datelimit;
    }







    public static Event from (ResultSet rs) {
        try {
            return new Event(
                    rs.getInt("evnt_id "),
                    rs.getInt("user_id "),
                    rs.getString("evnt_picture "),
                    rs.getString("evnt_date "),
                    rs.getString("evnt_datelimit "),
                    rs.getString("evnt_description "),
                    rs.getInt("evnt_category "),
                    rs.getDouble("evnt_salary "));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
