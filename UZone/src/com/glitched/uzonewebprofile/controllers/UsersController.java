package com.glitched.uzonewebprofile.controllers;

import com.glitched.uzonewebprofile.models.UZoneService;
import com.glitched.uzonewebprofile.models.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsersController",urlPatterns = "/users")
public class UsersController extends HttpServlet {
    UZoneService service;
    String url="";

    public UsersController() {
        super();
        service=new UZoneService();
        url="";
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processRequest("POST",request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processRequest("GET",request,response);
    }

    private void processRequest(String method,HttpServletRequest request,HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String action=request.getParameter("action");

        if(method.equals("GET")) {
            if(action.equals("getUsers")) {
                List<User> users=service.findAllUsers();
                request.setAttribute("users",users);
                url="listUser.jsp";
            }
            if(action.equals("goToUser")) {
                int id=Integer.parseInt(request.getParameter("id"));
                User user=service.findUserById(id);
                request.setAttribute("user",user);
                url="userProfile.jsp";
            }
        }

        if(method.equals("POST")) {

        }

        request.getRequestDispatcher(url).forward(request,response);
    }
}
