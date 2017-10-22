package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Comment extends BaseEntity {

    private int id;
    private String comment;

    public Comment(int id, String comment) { this.id = id;this.comment = comment; }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getComment() { return comment; }

    public void setComment(String comment) { this.comment = comment; }

     public static Comment from (ResultSet rs) throws SQLException {
         try {
         return new Comment(
                 rs.getInt("id_comment"),
                 rs.getString("id_pub"));
     } catch (SQLException e) {
        e.printStackTrace();}


         return null;
     }
}
