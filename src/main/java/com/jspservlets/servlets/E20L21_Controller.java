package com.jspservlets.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E20L21_Controller", value = "/E20L21_Controller")
public class E20L21_Controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        var page = request.getParameter("page");
        switch (page) {
            case "login":
                request.getRequestDispatcher("E20L21_Login.jsp").forward(request, response);
                break;
            case "signup":
                request.getRequestDispatcher("E20L21_SignUp.jsp").forward(request, response);
                break;
            case "about":
                request.getRequestDispatcher("E20L21_About.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("E20L21_NotFound.jsp").forward(request, response);
                break;
        }
    }
}