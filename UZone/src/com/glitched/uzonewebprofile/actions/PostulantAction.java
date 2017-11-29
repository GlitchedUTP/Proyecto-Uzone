package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public class PostulantAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
    private List<Event> events;
    int eventId;

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() {
        UZoneService service=new UZoneService();
        if(sessionMap.containsKey("username")) {
            if(service.checkPostulant(eventId,(int)sessionMap.get("id"))) {
                LocalDate localDate=LocalDate.now();
                if(service.createPostulant(eventId,(int)sessionMap.get("id"),localDate.toString())) {
                    setEvents(service.findAllEvents());
                    return SUCCESS;
                }
            } else {
                setEvents(service.findAllEvents());
                return SUCCESS;
            }
        }
        return ERROR;
    }
}
