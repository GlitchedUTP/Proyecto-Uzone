package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventsEntity extends BaseEntity {

    public EventsEntity() {
        super();
        setTableName("events");
    }

    public EventsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<Event> findByCriteria (String criteria, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Event> events = new ArrayList<>();
            while (rs.next()) {
                events.add(Event.from(rs,usersEntity,userTypesEntity));
            }
            return events;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Event> findAll(UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        return findByCriteria("",usersEntity,userTypesEntity);
    }

    public Event findById(int id, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE id= %d",id),usersEntity,userTypesEntity).get(0);
    }
}
