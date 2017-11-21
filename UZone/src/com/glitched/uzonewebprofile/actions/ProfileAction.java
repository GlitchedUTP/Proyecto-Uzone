package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class ProfileAction extends ActionSupport implements ModelDriven<User>,SessionAware {
    private Map<String, Object> sessionMap;
    private User user= new User();

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public User getModel() {
        return user;
    }

    public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            user=service.findUserByUsername(user.getUsername());
            return SUCCESS;
        }
        return ERROR;
    }
}
