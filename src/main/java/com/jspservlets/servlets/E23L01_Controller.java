package com.jspservlets.servlets;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;;

@WebServlet(name = "E23L01_Controller", value = "/E23L01_Controller")
public class E23L01_Controller extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var username = request.getParameter("username");
        var password = request.getParameter("password");
        if(username.equals("user") && password.equals("pass")) {
            request.getSession().invalidate();
            var newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);
            response.sendRedirect("E23L01_RestrictedArea.jsp");
        } else
            response.sendRedirect("E23L01_SessionLogin.jsp");
    }
}