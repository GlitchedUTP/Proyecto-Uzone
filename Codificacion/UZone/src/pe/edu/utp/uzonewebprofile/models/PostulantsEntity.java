package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostulantsEntity extends BaseEntity {
    public PostulantsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public PostulantsEntity() {
        super();
        setTableName("Postulants");
    }

    public List<Postulant> findByCriteria (String criteria, UsersEntity usersEntity, UserTypesEntity userTypesEntity, EventEntity eventEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Postulant> postulant = new ArrayList<>();
            while (rs.next()) {
                postulant.add(Postulant.from(rs,usersEntity,userTypesEntity,eventEntity));
            }
            return postulant;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    
}
