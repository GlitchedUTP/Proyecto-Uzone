package com.glitched.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Comment {
    int id;
    String description;
    Post post;

    public Comment() {
    }

    public Comment(int id, String description, Post post) {
        this.id = id;
        this.description = description;
        this.post = post;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public static Comment from (ResultSet rs,PostsEntity postsEntity,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        Comment comment=new Comment();
        try {
            comment.setPost(postsEntity.findById(rs.getInt("post_id"),usersEntity,userTypesEntity));
            comment.setId(rs.getInt("id"));
            comment.setDescription(rs.getString("description"));
            return comment;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
