package com.jspservlets.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E21L04_Controller", value = "/E21L04_Controller")
public class E21L04_Controller extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var out = resp.getWriter();
        out.println("Name: " + req.getParameter("name"));
        out.println("Gender: " + req.getParameter("gender"));
        out.print("Languages: ");
        var languages = req.getParameterValues("language");
        if (languages != null) {
            for (var language : languages)
                out.print(language + " ");
            out.println();
        } else
            out.println("None selected");
        out.println("Country: " + req.getParameter("country"));
    }
}