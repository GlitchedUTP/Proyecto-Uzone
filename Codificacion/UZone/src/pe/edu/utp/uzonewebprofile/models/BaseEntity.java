package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;

public class BaseEntity {
    Connection connection;
    String tableName;

    public BaseEntity(Connection connection, String tableName) {
        this.connection = connection;
        this.tableName = tableName;
    }

    public BaseEntity() {
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getBaseStatement() {
        return "SELECT * FROM ".concat(tableName).concat(" ");
    }
}
