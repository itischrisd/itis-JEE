package com.jspservlets.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L07_RestrictedAreaController", value = "/E23L07_memberArea")
public class E23L07_RestrictedAreaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        var action = request.getParameter("action");
        switch (action) {
            case "destroy":
                request.getSession().invalidate();
                response.sendRedirect(request.getContextPath() + "/E23L07_home?action=login");
                break;
            case "loggedIn":
                request.getRequestDispatcher("E23L07_RestrictedArea.jsp").forward(request, response);
            default:
                break;
        }
    }
}