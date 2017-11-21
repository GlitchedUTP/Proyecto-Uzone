package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;
import com.glitched.uzonewebprofile.models.UserType;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

public class LoginAction extends ActionSupport implements ModelDriven<User>,SessionAware {
    private Map<String, Object> sessionMap;
    private User user= new User();
    private List<Post> posts;

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
    public User getModel() {
        return user;
    }

    public String execute() throws Exception {
        UZoneService service = new UZoneService();
        if (sessionMap.containsKey("username")) {
            setPosts(service.findLastest());
            return SUCCESS;
        }
        if (service.findUserByLogin(user.getUsername(), user.getPassword())) {
            user=service.findUserByUsername(user.getUsername());
            sessionMap.put("username", user.getUsername());
            sessionMap.put("id", user.getId());
            sessionMap.put("userType",user.getUserType().getId());
            setPosts(service.findLastest());
            return SUCCESS;
        }
        else return INPUT;
    }
}
