package pe.edu.utp.uzonewebprofile.models;


import java.sql.SQLException;
import java.sql.ResultSet;

public class Event {
    private int id;
    private String description;
    private int id_usu;

    public Event(int id, String description, int id_usu) {
        this.id = id;
        this.description = description;
        this.id_usu = id_usu;
    }
    public Event() {
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return description;
    }

    public void setName(String name) {
        this.description = name;
    }


    public int getId_usu(){return id_usu;}

    public void setId_usu(int id_usu){this.id_usu = id_usu;}





    public static Event from (ResultSet rs) {
        try {
            return new Event(
                    rs.getInt("evnt_id "),
                    rs.getString("evnt_description "),
                    rs.getInt("user_id "));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
