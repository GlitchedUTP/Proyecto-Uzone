package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentsEntity extends BaseEntity {

    public CommentsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public CommentsEntity() {
        super();
        setTableName("comments");
    }

    public List<Comment> findByCriteria (String criteria, PostsEntity postsEntity,UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Comment> comments = new ArrayList<>();
            while (rs.next()) {
                comments.add(Comment.from(rs,postsEntity,usersEntity,userTypesEntity));
            }
            return comments;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
