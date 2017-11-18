package com.glitched.uzonewebprofile.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class HomeAction extends ActionSupport implements SessionAware{
    private Map<String, Object> sessionMap;

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public String execute() {
        if (sessionMap.containsKey("username")) {
            return SUCCESS;
        }
        return ERROR;
    }
}
