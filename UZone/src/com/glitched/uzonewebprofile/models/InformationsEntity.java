package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InformationsEntity extends BaseEntity{
    public InformationsEntity() {
        super();
        setTableName("Information");
    }
    public InformationsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<Information> findByCriteria (String criteria,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Information> information = new ArrayList<>();
            while (rs.next()) {
                information.add(Information.from(rs,usersEntity,userTypesEntity));
            }
            return information;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Information> findAll(UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        return findByCriteria("",usersEntity,userTypesEntity);
    }

    public Information findById(int id,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        return findByCriteria(
                String.format("WHERE id=%d",id),usersEntity,userTypesEntity).get(0);
    }
}
