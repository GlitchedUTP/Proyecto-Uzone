package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction  extends ActionSupport implements ModelDriven<User> {
    private User user= new User();

    public User getModel()
    {
        return user;
    }

    public String execute() throws Exception {
        UZoneService service=new UZoneService();
        if(service.findUserByLogin(user.getUsername(),user.getPassword())) return SUCCESS;
        else return ERROR;
    }

    public String register() {
        return SUCCESS;
    }
}
