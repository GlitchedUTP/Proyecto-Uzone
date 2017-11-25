package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Information;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import javax.sound.sampled.Line;
import java.util.Map;

public class SelfProfileAction extends ActionSupport implements ModelDriven<Information>,SessionAware {
    private Map<String, Object> sessionMap;
    private Information information;

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
            information=service.findInformationByUserId((int)sessionMap.get("id"));
            return SUCCESS;
        }
        return ERROR;
    }
}
