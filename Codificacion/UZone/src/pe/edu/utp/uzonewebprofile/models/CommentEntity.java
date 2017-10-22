package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentEntity extends BaseEntity {

    public  CommentEntity() {
        super();
        setTableName("Comment");
    }

    public CommentEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<Comment> findByCriteria (String criteria) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Comment> Comments = new ArrayList<>();
            while (rs.next()) {
                Comments.add(Comment.from(rs));
            }
            return Comments;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Comment> findAll() {
        return findByCriteria("");
    }

    public Comment findById(int id) {
        return findByCriteria(
                String.format("WHERE id_comment= %d",id)).get(0);
    }
}
