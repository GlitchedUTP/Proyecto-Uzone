package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostsEntity extends BaseEntity{
    public PostsEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public PostsEntity() {
        super();
        setTableName("posts");
    }

    public List<Post> findByCriteria (String criteria, UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Post> posts = new ArrayList<>();
            while (rs.next()) {
                posts.add(Post.from(rs,usersEntity,userTypesEntity));
            }
            return posts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Post> findByUser(User user, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE id=%d",user.getId()),usersEntity,userTypesEntity);
    }
}
