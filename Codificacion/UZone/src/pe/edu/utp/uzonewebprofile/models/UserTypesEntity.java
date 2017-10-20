package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserTypesEntity extends BaseEntity{

    public UserTypesEntity() {
        super();
        setTableName("usertypes");
    }

    public UserTypesEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<UserType> findAll () {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement());
            List<UserType> usertypes = new ArrayList<>();
            while (rs.next()) {
                usertypes.add(UserType.from(rs));
            }
            return usertypes;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
