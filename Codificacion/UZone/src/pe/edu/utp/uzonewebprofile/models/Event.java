package pe.edu.utp.uzonewebprofile.models;


import java.sql.SQLException;
import java.sql.ResultSet;

public class Event {
    private int id;
    private String name;

    public Event(int id, String name) {
        this.id = id;
        this.name = name;
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
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static Event from (ResultSet rs) {
        try {
            return new Event(
                    rs.getInt("evnt_id "),
                    rs.getString("evnt_description "));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
