package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserAction  extends ActionSupport implements ModelDriven<User> {
    private User user= new User();

    public User getModel()
    {
        return user;
    }

    @Override
    public String execute() throws Exception
    {
        String ret = ERROR;
        Connection conn = null;

        try {
            String URL = "jdbc:mysql://localhost/struts_tutorial";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "root", "leyendas12");
            String sql = "SELECT name FROM login WHERE";
            sql+=" user = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                ret = SUCCESS;
            }
        } catch (Exception e) {
            ret = ERROR;
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                }
            }
        }
        return ret;
    }

}
