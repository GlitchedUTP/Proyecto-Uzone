package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PointsEntity extends BaseEntity{

    public PointsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public PointsEntity() {
        super();
        setTableName("points");
    }

    public List<Point> findByCriteria (String criteria, UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Point> points = new ArrayList<>();
            while (rs.next()) {
                points.add(Point.from(rs,usersEntity,userTypesEntity));
            }
            return points;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Point> findAll (UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        return findByCriteria("",usersEntity,userTypesEntity);
    }

    public List<Point> findByOrigin(User origin,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE origin=%d",origin.getId()),usersEntity,userTypesEntity);
    }

    public List<Point> findByTarget(User target,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE origin=%d",target.getId()),usersEntity,userTypesEntity);
    }
}
