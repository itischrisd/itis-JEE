package com.jspservlets.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L06_SiteController", value = "/E23L06_home")
public class E23L06_SiteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var action = req.getParameter("action");
        if (action.equals("login")) {
            req.getRequestDispatcher("E23L06_LoginPage.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var username = request.getParameter("username");
        var password = request.getParameter("password");
        if(username.equals("user") && password.equals("pass")) {
            request.getSession().invalidate();
            var newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);
            newSession.setAttribute("username", username);
            response.sendRedirect("E23L06_RestrictedArea.jsp");
        } else {
            response.sendRedirect("E23L06_LoginPage.jsp");
        }
    }
}