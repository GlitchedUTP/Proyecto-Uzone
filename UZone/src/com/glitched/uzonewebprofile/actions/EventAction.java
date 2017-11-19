package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class EventAction extends ActionSupport implements ModelDriven<Event>, SessionAware {
    private Event event= new Event();
    public Event getModel(){return event;}

    @Override
    public String execute() throws Exception{
        UZoneService service = new UZoneService();
        return SUCCESS;

        }

    @Override
    public void setSession(Map<String, Object> map) {

    }
}
