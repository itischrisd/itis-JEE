package com.jspservlets.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L06_RestrictedAreaController", value = "/E23L06_RestrictedAreaController")
public class E23L06_RestrictedAreaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var action = request.getParameter("action");
        if (action.equals("destroy")) {
            request.getSession().invalidate();
            response.sendRedirect("E23L06_LoginPage.jsp");
        }
    }
}