package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.util.List;

public class UZoneDataStore {
    private Connection connection;
    private UserTypesEntity userTypesEntity;
    private UsersEntity usersEntity;
    private InformationsEntity informationsEntity;

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
}
