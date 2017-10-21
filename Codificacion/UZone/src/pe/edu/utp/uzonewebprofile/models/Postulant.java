package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Postulant {

    private int id_postulant;
    private User user_id;
    private String date;

    public Postulant(int id_postulant, User user_id, String date) {
        this.id_postulant = id_postulant;
        this.user_id = user_id;
        this.date = date;
    }

    public Postulant() { }

    public int getEvent_id() {return event_id; }

    public void setEvent_id(int event_id) {this.event_id = event_id;}

    public int getPostulant_id() {return postulant_id;}

    public void setPostulant_id(int id_postulant) {this.id_postulant = id_postulant;}

    public String getDate() {return date;}

    public void setDate(String date) {this.date = date; }

    public User getUser_id() {return user_id; }

    public void setUser_id(User user_id) {this.user_id = user_id;}

    public static Postulant from(ResultSet rs, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        try {
            return new Postulant(
                    rs.getInt("postulant_id"),
                    usersEntity.findById(rs.getInt("user_id"),userTypesEntity),
                    rs.getString("postulant_date"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
