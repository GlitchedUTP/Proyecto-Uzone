package com.glitched.uzonewebprofile.models;

import java.sql.SQLException;
import java.sql.ResultSet;

public class Event {
    private int id;
    private String pictureUrl;
    private String date;
    private String dateLimit;
    private String description;
    private int category;
    private double salary;
    private User user;

    public Event() {
    }

    public Event(int id, String pictureUrl, String date, String dateLimit, String description, int category, double salary, User user) {
        this.id = id;
        this.pictureUrl = pictureUrl;
        this.date = date;
        this.dateLimit = dateLimit;
        this.description = description;
        this.category = category;
        this.salary = salary;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDateLimit() {
        return dateLimit;
    }

    public void setDateLimit(String dateLimit) {
        this.dateLimit = dateLimit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public static Event from(ResultSet rs,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        Event event=new Event();
        try {
            event.setId(rs.getInt("id"));
            event.setPictureUrl(rs.getString("picture_url"));
            event.setDate(rs.getDate("date").toString());
            event.setDateLimit(rs.getDate("date_limit").toString());
            event.setDescription(rs.getString("description"));
            event.setCategory(rs.getInt("category"));
            event.setSalary(rs.getDouble("salary"));
            event.setUser(usersEntity.findById(rs.getInt("user_id"),userTypesEntity));
            return event;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
