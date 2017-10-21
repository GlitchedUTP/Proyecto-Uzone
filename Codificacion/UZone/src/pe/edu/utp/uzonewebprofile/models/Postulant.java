package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Postulant {

    private Event event_id;
    private int id_postulant;
    private User user_id;
    private String date;

    public Postulant(int id_postulant, User user_id, String date) {
        this.id_postulant = id_postulant;
        this.user_id = user_id;
        this.date = date;
    }

    public Postulant() { }

    public Event getEvent_id() {return event_id; }

    public void setEvent_id(Event event_id) {this.event_id = event_id;}

    public int getPostulant_id() {return id_postulant;}

    public void setPostulant_id(int id_postulant) {this.id_postulant = id_postulant;}

    public String getDate() {return date;}

    public void setDate(String date) {this.date = date; }

    public User getUser_id() {return user_id; }

    public void setUser_id(User user_id) {this.user_id = user_id;}

    public static Postulant from(ResultSet rs, UsersEntity usersEntity, UserTypesEntity userTypesEntity, EventEntity eventEntity) {
        Postulant postulant = new Postulant();
        try {
                    postulant.setEvent_id(eventEntity.findById(rs.getInt("evnt_id")));
                    postulant.setPostulant_id(rs.getInt("postulant_id"));
                    postulant.setUser_id(usersEntity.findById(rs.getInt("user_id"),userTypesEntity));
                    postulant.setDate(rs.getString("postulant_date"));
                    return postulant;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
