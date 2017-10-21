package pe.edu.utp.uzonewebprofile.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventEntity extends BaseEntity {

    public EventEntity() {
        super();
        setTableName("Evnts");
    }

    public EventEntity(Connection connection, String tableName) {
        super(connection, tableName);
    }

    public List<Event> findByCriteria (String criteria) {
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(getBaseStatement().concat(criteria));
            List<Event> Evnts = new ArrayList<>();
            while (rs.next()) {
                Evnts.add(Event.from(rs));
            }
            return Evnts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Event> findAll() {
        return findByCriteria("");
    }

    public Event findById(int id) {
        return findByCriteria(
                String.format("WHERE evnt_id= %d",id)).get(0);
    }
}
