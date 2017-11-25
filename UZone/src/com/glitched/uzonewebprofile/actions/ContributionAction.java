package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Event;
import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

public class ContributionAction extends ActionSupport implements ModelDriven<Post>,SessionAware {
    private Map<String, Object> sessionMap;
    private Post post= new Post();
    private Event event= new Event();
    private List<Post> posts;
    private List<Event> events;

    public List<Event> getEvents() { return events; }

    public void setEvents(List<Event> events) { this.events = events; }

    public List<Post> getPosts() { return posts; }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    @Override
    public Post getModel()
    {
        return post;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            post.setUser(service.findUserById((int)sessionMap.get("id")));
            setPosts(service.findByUser(post.getUser().getId()));
            return SUCCESS;
        } else return ERROR;
    }

}



  /*  public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            if (sessionMap.get("id").equals("1")){
                post.setUser(service.findUserById((int)sessionMap.get("id")));
                setPosts(service.findByUser(post.getUser().getId()));
                return SUCCESS;
            }else if(sessionMap.get("id").equals("2"))
                event.setUser(service.findUserById((int)sessionMap.get("id")));
            setEvents(service.findByUserEvent(event.getUser().getId()));
            return SUCCESS;
        } else return ERROR;
    }*/