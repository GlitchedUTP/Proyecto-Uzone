package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InformationEntity extends BaseEntity{
    public InformationEntity() {
        super();
        setTableName("Information");
    }
    public InformationEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<Information> findByCriteria (String criteria) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Information> information = new ArrayList<>();
            while (rs.next()) {
                information.add(Information.from(rs));
            }
            return information;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Information> findAll() {
        return findByCriteria("");
    }

    public Information findById(int id) {
        return findByCriteria(
                String.format("WHERE info_id= %d",id)).get(0);
    }
}
