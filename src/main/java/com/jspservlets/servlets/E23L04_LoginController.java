package com.jspservlets.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L04_Controller", value = "/E23L04_Controller")
public class E23L04_LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var username = request.getParameter("username");
        var password = request.getParameter("password");
        if(username.equals("user") && password.equals("pass")) {
            request.getSession().invalidate();
            var newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);
            Cookie cUsername = new Cookie("username", username);
            response.addCookie(cUsername);
            response.sendRedirect("E23L04_RestrictedArea.jsp");
        } else {
            response.sendRedirect("E23L04_SessionLogin.jsp");
        }
    }
}