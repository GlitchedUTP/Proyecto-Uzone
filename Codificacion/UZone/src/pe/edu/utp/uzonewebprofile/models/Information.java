package pe.edu.utp.uzonewebprofile.models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Information {
    int info_id;
    String info_description;
    double info_avgPoints;
    int info_voteQuantity;

    public Information(int info_id, String info_description, double info_avgPoints, int info_voteQuantity) {
        this.info_id = info_id;
        this.info_description = info_description;
        this.info_avgPoints = info_avgPoints;
        this.info_voteQuantity = info_voteQuantity;
    }

    public Information() {}

    public int getInfo_id() {return info_id; }

    public void setInfo_id(int info_id) {this.info_id = info_id; }

    public String getInfo_description() {return info_description; }

    public void setInfo_description(String info_description) {this.info_description = info_description; }

    public double getInfo_avgPoints() {return info_avgPoints; }

    public void setInfo_avgPoints(double info_avgPoints) {this.info_avgPoints = info_avgPoints; }

    public int getInfo_voteQuantity() {return info_voteQuantity;}

    public void setInfo_voteQuantity(int info_voteQuantity) {this.info_voteQuantity = info_voteQuantity;}

    public static Information from (ResultSet rs) {
        try {
            return new Information(
                    rs.getInt("info_id"),
                    rs.getString("info_description"),
                    rs.getDouble("info_avgPoints"),
                    rs.getInt("info_voteQuantity"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
