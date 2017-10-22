package com.glitched.uzonewebprofile.models;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class UZoneService {
    Connection connection;
    UZoneDataStore dataStore;

    public UZoneService() {
        try {
            InitialContext context = new InitialContext();
            dataStore = new UZoneDataStore();
            connection = ((DataSource)context
                    .lookup("MySQLDataSource"))
                    .getConnection();
            dataStore.setConnection(connection);
        } catch(NamingException e) {
            e.printStackTrace();
        } catch(SQLException e) {
            e.printStackTrace();
        }

    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public UZoneDataStore getDataStore() {
        return dataStore;
    }

    public void setDataStore(UZoneDataStore dataStore) {
        this.dataStore = dataStore;
    }

    //UserType methods
    public List<UserType> findAllUserTypes() { return dataStore.findAllUserTypes(); }

    //Information ethods
    public List<Information> findAllInformations() { return dataStore.findAllInformations(); }

    //User methods
    public List<User> findAllUsers() {
        return dataStore.findAllUsers();
    }

    public User findUserById(int id) {
        return dataStore.findUserById(id);
    }
}