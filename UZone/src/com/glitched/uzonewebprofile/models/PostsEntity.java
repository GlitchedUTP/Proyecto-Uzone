package com.glitched.uzonewebprofile.models;

import javafx.geometry.Pos;

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
        return findByCriteria(String.format("WHERE user_id=%d",user.getId()),usersEntity,userTypesEntity);
    }

    public Post findById (int id, UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        return findByCriteria(String.format("WHERE id=%d",id),usersEntity,userTypesEntity).get(0);
    }

    public List<Post> findLastest(UsersEntity usersEntity, UserTypesEntity userTypesEntity) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(String.format("SELECT id,user_id,title,date_format(date,'%%d-%%m-%%Y') as date,description,url FROM %s"
                            ,super.getTableName()));
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

    public boolean create(Post post) {
        return executeUpdate(String.format(
                "INSERT INTO %s(title,description,url)"
                        .concat("VALUES('%s','%s','%s')"),
                getTableName(),post.getTitle(),post.getDescription(),post.getUrl()));
    }

    public boolean create(String title, String description, String url) {
        Post post = new Post();
        post.setTitle(title);
        post.setDescription(description);
        post.setUrl(url);
        return create(post);
    }
}

