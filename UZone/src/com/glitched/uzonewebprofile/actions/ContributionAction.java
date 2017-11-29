package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

public class ContributionAction extends ActionSupport implements SessionAware {
    private  Post post = new Post();
    private Map<String, Object> sessionMap;
    private List<Post> posts;
    private List<Event> events;

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }


    @Override
    public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            if((int)sessionMap.get("id")==1) {
                setPosts(service.findByUser((int)sessionMap.get("id")));
            } else if ((int)sessionMap.get("id")==2) {
                setEvents(service.findEventByUser((int)sessionMap.get("id")));
            }

            return SUCCESS;
        } else return ERROR;
    }

}