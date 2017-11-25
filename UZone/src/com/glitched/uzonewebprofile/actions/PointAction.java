package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Point;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class PointAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
    String target;
    String quantity;

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() throws Exception {
        UZoneService service=new UZoneService();
        if(sessionMap.containsKey("username")) {
            if(service.createPoint((int)sessionMap.get("id"),Integer.parseInt(target),Integer.parseInt(quantity))) {
                return SUCCESS;
            }
        }
        return ERROR;
    }
}
