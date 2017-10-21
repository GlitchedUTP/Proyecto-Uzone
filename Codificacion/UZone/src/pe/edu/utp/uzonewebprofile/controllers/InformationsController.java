package pe.edu.utp.uzonewebprofile.controllers;

import pe.edu.utp.uzonewebprofile.models.Information;
import pe.edu.utp.uzonewebprofile.models.UZoneService;
import pe.edu.utp.uzonewebprofile.models.UserType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "InformationsController",urlPatterns ="/Information")
public class InformationsController extends HttpServlet {
    UZoneService service;
    String url="";

    public InformationsController() {
        super();
        service=new UZoneService();
        url="";
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest("POST",request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest("GET",request,response);
    }
    private void processRequest(String method, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");

        if(method.equals("GET")) {
            if(action.equals("test")) {
                List<Information> information=service.findAllInformations();
                request.setAttribute("information",information);
                url="test.jsp";
            }
        }

        if(method.equals("POST")) {

        }

        request.getRequestDispatcher(url).forward(request,response);
    }
}
