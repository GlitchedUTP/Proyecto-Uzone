package com.glitched.uzonewebprofile.models;

import java.sql.Connection;
import java.util.List;

public class UZoneDataStore {
    private Connection connection;
    private UserTypesEntity userTypesEntity;
    private UsersEntity usersEntity;
    private InformationsEntity informationsEntity;
    private EventsEntity eventsEntity;
    private PostulantsEntity postulantsEntity;
    private PostsEntity postsEntity;
    private CommentsEntity commentsEntity;
    private PointsEntity pointsEntity;

    public UZoneDataStore(Connection connection) {
        this.connection = connection;
    }

    public UZoneDataStore() {}

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    //Private getters for entities

    private UserTypesEntity getUserTypesEntity() {
        if(userTypesEntity==null) {
            userTypesEntity=new UserTypesEntity();
            userTypesEntity.setConnection(connection);
        }
        return userTypesEntity;
    }

    private UsersEntity getUsersEntity() {
        if(usersEntity==null) {
            usersEntity=new UsersEntity();
            usersEntity.setConnection(connection);
        }
        return usersEntity;
    }

    private InformationsEntity getInformationsEntity(){
        if(informationsEntity==null) {
            informationsEntity=new InformationsEntity();
            informationsEntity.setConnection(connection);
        }
        return informationsEntity;
    }

    private EventsEntity getEventsEntity() {
        if(eventsEntity==null) {
            eventsEntity = new EventsEntity();
            eventsEntity.setConnection(connection);
        }
        return eventsEntity;
    }

    private PostulantsEntity getIPostulantsEntity(){
        if(postulantsEntity==null) {
            postulantsEntity=new PostulantsEntity();
            postulantsEntity.setConnection(connection);
        }
        return postulantsEntity;
    }

    private PostsEntity getPostsEntity() {
        if (pointsEntity == null) {
            postsEntity = new PostsEntity();
            postsEntity.setConnection(connection);
        }
        return postsEntity;
    }

    private CommentsEntity getCommentsEntity() {
        if (commentsEntity==null) {
            commentsEntity=new CommentsEntity();
            commentsEntity.setConnection(connection);
        }
        return commentsEntity;
    }

    private PointsEntity getPointsEntity() {
        if(pointsEntity==null) {
            pointsEntity=new PointsEntity();
            pointsEntity.setConnection(connection);
        }
        return  pointsEntity;
    }

    //Public data store methods
    //UserType methods
    public List<UserType> findAllUserTypes() {
        if(connection==null) return null;
        return getUserTypesEntity().findAll();
    }

    //Information methods
    public List<Information> findAllInformations() {
        if(connection==null) return null;
        return getInformationsEntity().findAll(getUsersEntity(),getUserTypesEntity());
    }

    //User methods
    public List<User> findAllUsers() {
        if(connection==null) return null;
        return getUsersEntity().findAll(getUserTypesEntity());
    }

    public User findUserById(int id) {
        if(connection==null) return null;
        return getUsersEntity().findById(id,getUserTypesEntity());
    }

    public User findUserByUsername(String username) {
        if(connection==null) return null;
        return getUsersEntity().findByUsername(username,getUserTypesEntity());
    }

    public boolean findUserByLogin(String username,String password) {
        if(connection==null) return false;
        return getUsersEntity().findByLogin(username,password,getUserTypesEntity());
    }

    public boolean createUser(User user) {
        if(connection==null) return false;
        return getUsersEntity().create(user);
    }

    public boolean createUser(String username,String password,String name,String lastName,String email,String birthDate,char genre,int id) {
        if(connection==null) return false;
        return getUsersEntity().create(username,password,name,lastName,email,birthDate,genre,getUserTypesEntity().findById(id));
    }
    public boolean createEvent(Event event) {
        if(connection==null) return false;
        return getUsersEntity().create(user);
    }

}
