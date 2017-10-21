package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Point {
    private User origin;
    private int id;
    private User target;
    private int quantity;

    public Point(User origin, int id, User target, int quantity) {
        this.origin = origin;
        this.id = id;
        this.target = target;
        this.quantity = quantity;
    }

    public Point() {
    }

    public User getOrigin() {
        return origin;
    }

    public void setOrigin(User origin) {
        this.origin = origin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getTarget() {
        return target;
    }

    public void setTarget(User target) {
        this.target = target;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public static Point from(ResultSet rs,UsersEntity usersEntity,UserTypesEntity userTypesEntity) {
        Point point=new Point();
        try {
            point.setOrigin(usersEntity.findById(rs.getInt("point_origin"),userTypesEntity));
            point.setId(rs.getInt("point_id"));
            point.setTarget(usersEntity.findById(rs.getInt("point_target"),userTypesEntity));
            point.setQuantity(rs.getInt("point_quantity"));
            return point;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
