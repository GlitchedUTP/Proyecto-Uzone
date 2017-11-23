package com.glitched.uzonewebprofile.models;

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

    public List<Postulant> findByCriteria (String criteria, UsersEntity usersEntity, UserTypesEntity userTypesEntity, EventsEntity eventsEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Postulant> postulant = new ArrayList<>();
            while (rs.next()) {
                postulant.add(Postulant.from(rs,eventsEntity,usersEntity,userTypesEntity));
            }
            return postulant;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}
