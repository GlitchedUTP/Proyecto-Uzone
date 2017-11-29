package com.glitched.uzonewebprofile.actions;

import com.glitched.uzonewebprofile.models.Comment;
import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

public class PostDetailsAction extends ActionSupport implements ModelDriven<Post>,SessionAware {
    private Map<String, Object> sessionMap;
    private Post post;
    private List<Comment> comments;
    int postId;

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public Post getModel() {
        return post;
    }

    @Override
    public String execute() {
        UZoneService service=new UZoneService();
        if(sessionMap.containsKey("username")) {
            post=service.findPostById(postId);
            setComments(service.findCommentByPost(postId));
            return SUCCESS;
        } else return ERROR;
    }
}
