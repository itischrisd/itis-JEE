<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restricted Area</title>
</head>
<body>
<%
    String username = null, sessionID = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username"))
                username = cookie.getValue();
            if (cookie.getName().equals("JSESSIONID"))
                sessionID = cookie.getValue();
        }
    }
    if (sessionID == null || username == null)
        response.sendRedirect("E23L04_CookieLogout.jsp");
%>
Username: <%= username %><br>
Session ID: <%= sessionID %><br>
This is a restricted area!<br>
<form action="<%= request.getContextPath() %>/E23L04_RestrictedAreaController" method="get">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="Logout">
</form>
</body>
</html>
