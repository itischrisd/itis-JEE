package com.jspservlets.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L05_Controller", value = "/E23L05_Controller")
public class E23L05_LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var username = request.getParameter("username");
        var password = request.getParameter("password");
        if(username.equals("user") && password.equals("pass")) {
            request.getSession().invalidate();
            var newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);
            newSession.setAttribute("username", username);
            response.sendRedirect("E23L05_RestrictedArea.jsp");
        } else {
            response.sendRedirect("E23L05_SessionLogin.jsp");
        }
    }
}