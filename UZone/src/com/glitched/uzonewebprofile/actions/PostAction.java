package com.glitched.uzonewebprofile.actions;


import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public class PostAction extends ActionSupport implements ModelDriven<Post>,SessionAware {
    private Map<String, Object> sessionMap;
    private Post post= new Post();
    private List<Post> posts;

    public List<Post> getPosts() {
        return posts;
    }

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
    public String execute() throws Exception
    {
        UZoneService service=new UZoneService();
        if (sessionMap.containsKey("username")) {
            post.setUser(service.findUserById((int)sessionMap.get("id")));
            //DateTimeFormatter dateTimeFormatter= DateTimeFormatter.ofPattern("dd-mm-yyyy");
            LocalDate localDate=LocalDate.now();
            post.setDate(localDate.toString());
            if(service.createPost(post)) {
                setPosts(service.findLastest());
                return SUCCESS;
            } else return ERROR;
        } else return ERROR;
    }
}
