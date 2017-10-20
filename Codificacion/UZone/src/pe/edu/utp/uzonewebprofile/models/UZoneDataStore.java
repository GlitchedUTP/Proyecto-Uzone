package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.util.List;

public class UZoneDataStore {
    private Connection connection;
    private UserTypesEntity userTypesEntity;

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

    //Public data store methods

    public List<UserType> findAllUserTypes() {
        if(connection==null) return null;
        return getUserTypesEntity().findAll();
    }
}
