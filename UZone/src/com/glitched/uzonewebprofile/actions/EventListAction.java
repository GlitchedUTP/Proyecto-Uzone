package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

public class EventListAction extends ActionSupport implements SessionAware {
    private List<Event> events;
    private Map<String, Object> sessionMap;

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            setEvents(service.findAllEvents());
            return SUCCESS;
        }
        return ERROR;
    }
}