package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Information;
import com.glitched.uzonewebprofile.models.Point;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class PointAction extends ActionSupport implements ModelDriven<Information>,SessionAware {
    private Map<String, Object> sessionMap;
    private Information information;
    String target;
    String quantity;
    int value;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

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
    public Information getModel() {
        return information;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() throws Exception {
        UZoneService service=new UZoneService();
        if(sessionMap.containsKey("username")) {
            if(!service.checkPoint((int)sessionMap.get("id"),Integer.parseInt(target))) {
                if(service.createPoint((int)sessionMap.get("id"),Integer.parseInt(target),Integer.parseInt(quantity))) {
                    if(service.updateInformation(Integer.parseInt(target))) {
                        value=service.getQuantity((int)sessionMap.get("id"),Integer.parseInt(target));
                        information=service.findInformationByUserId(Integer.parseInt(target));
                        return SUCCESS;
                    }
                }
            } else {
                if(service.updatePoint((int)sessionMap.get("id"),Integer.parseInt(target),Integer.parseInt(quantity))) {
                    if(service.updateInformation(Integer.parseInt(target))) {
                        value=service.getQuantity((int)sessionMap.get("id"),Integer.parseInt(target));
                        information=service.findInformationByUserId(Integer.parseInt(target));
                        return SUCCESS;
                    }
                }
            }
        }
        return ERROR;
    }
}
