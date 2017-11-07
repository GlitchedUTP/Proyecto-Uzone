package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsersEntity extends BaseEntity{

    public UsersEntity() {
        super();
        setTableName("users");
    }

    public UsersEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<User> findByCriteria (String criteria, UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<User> users = new ArrayList<>();
            while (rs.next()) {
                users.add(User.from(rs,userTypesEntity));
            }
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<User> findAll(UserTypesEntity userTypesEntity) {
        return findByCriteria("",userTypesEntity);
    }

    public User findById(int id,UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE user_id=%d",id),userTypesEntity).get(0);
    }
}
