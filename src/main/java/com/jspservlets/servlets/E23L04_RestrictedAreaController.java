package com.jspservlets.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

;

@WebServlet(name = "E23L04_RestrictedAreaController", value = "/E23L04_RestrictedAreaController")
public class E23L04_RestrictedAreaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var action = request.getParameter("action");
        if (action.equals("destroy")) {
            request.getSession().invalidate();
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    cookie.setValue(null);
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
            response.sendRedirect("E23L04_CookieLogout.jsp");
        }
    }
}