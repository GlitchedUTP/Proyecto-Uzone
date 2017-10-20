package pe.edu.utp.uzonewebprofile.controllers;

import pe.edu.utp.uzonewebprofile.models.UZoneService;
import pe.edu.utp.uzonewebprofile.models.UserType;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "UserTypesController",urlPatterns = "/userTypes")
public class UserTypesController extends javax.servlet.http.HttpServlet {
    UZoneService service;
    String url="";

    public UserTypesController() {
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
            if(action.equals("test")) {
                List<UserType> userTypes=service.findAllUserTypes();
                request.setAttribute("userTypes",userTypes);
                url="test.jsp";
            }
        }

        if(method.equals("POST")) {

        }

        request.getRequestDispatcher(url).forward(request,response);
    }
}
