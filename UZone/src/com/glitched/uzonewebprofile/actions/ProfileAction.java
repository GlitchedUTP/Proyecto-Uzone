package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Information;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class ProfileAction extends ActionSupport implements ModelDriven<Information>,SessionAware {
    private Map<String, Object> sessionMap;
    private Information information;
    String username;
    int value;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public Information getModel() {
        return information;
    }

    @Override
    public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            information=service.findInformationByUserUsername(username);
            value=service.getQuantity((int)sessionMap.get("id"),information.getUser().getId());
            return SUCCESS;
        }
        return ERROR;
    }
}
