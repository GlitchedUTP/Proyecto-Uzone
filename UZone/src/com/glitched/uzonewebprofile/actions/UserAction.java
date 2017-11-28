package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction  extends ActionSupport implements ModelDriven<User> {
    private User user= new User();

    @Override
    public User getModel()
    {
        return user;
    }

    @Override
    public String execute() {
        UZoneService service=new UZoneService();
        if(service.createUser(user)) {
            if(service.createInformation("",0,0,user.getUsername())) {
                return SUCCESS;
            }
        }
        return INPUT;
    }
}
