package com.jspservlets.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "URL Parameter", value = "/url-parameter")
public class E20L16_URLParameter extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.getWriter().append(request.getParameter("getValue1"));
        var out = response.getWriter();
        out.println("Value 1: " + request.getParameter("getValue1"));
        out.println("Value 2: " + request.getParameter("getValue2"));
    }
}