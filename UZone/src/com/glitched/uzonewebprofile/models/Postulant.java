package com.glitched.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Postulant {

    private int id;
    private String date;
    Event event;
    User user;

    public Postulant() {
    }

    public Postulant(String date, Event event, User user) {
        this.date = date;
        this.event = event;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public static Postulant from(ResultSet rs, EventsEntity eventsEntity, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        Postulant postulant=new Postulant();
        try {
            postulant.setEvent(eventsEntity.findById(rs.getInt("event_id"),usersEntity,userTypesEntity));
            postulant.setId(rs.getInt("id"));
            postulant.setUser(usersEntity.findById(rs.getInt("user_id"),userTypesEntity));
            postulant.setDate(rs.getDate("date").toString());
            return postulant;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
