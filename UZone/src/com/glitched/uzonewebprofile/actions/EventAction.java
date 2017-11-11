package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventAction extends ActionSupport implements ModelDriven<Event> {
    private Event event= new Event();
    public Event getModel(){return event}

    @Override
    public String execute() throws Exception{return SUCCESS;}
}
