package com.glitched.uzonewebprofile.actions;


import com.glitched.uzonewebprofile.models.Post;
import com.glitched.uzonewebprofile.models.UZoneService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



public class PostAction extends ActionSupport implements ModelDriven<Post> {
    private Post post= new Post();
    public Post getModel()
    {
        return post;
    }

    @Override
    public String execute() throws Exception
    {
        UZoneService service=new UZoneService();
        if(service.createVideo(post))
        return SUCCESS;
        else return ERROR;
    }
}
