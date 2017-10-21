package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.util.List;

public class UZoneDataStore {
    private Connection connection;
    private UserTypesEntity userTypesEntity;
    private UsersEntity usersEntity;
    private InformationsEntity informationsEntity;
    private PostulantsEntity postulantsEntity;

    public UZoneDataStore(Connection connection) {
        this.connection = connection;
    }

    public UZoneDataStore() {
    }

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
<<<<<<< HEAD
=======
    private PostulantsEntity getIPostulantsEntity(){
        if(postulantsEntity==null) {
            postulantsEntity=new PostulantsEntity();
            postulantsEntity.setConnection(connection);
        }
        return postulantsEntity;
    }
>>>>>>> cecde3f3b61b21c71d4e7f438cccea751d89ecf1

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

<<<<<<< HEAD
    //User methods
    public List<User> findAllUsers() {
        if(connection==null) return null;
        return getUsersEntity().findAll(getUserTypesEntity());
    }

    public User findUserById(int id) {
        if(connection==null) return null;
        return getUsersEntity().findById(id,getUserTypesEntity());
    }
=======
>>>>>>> cecde3f3b61b21c71d4e7f438cccea751d89ecf1

}
