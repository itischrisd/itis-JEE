<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restricted Area</title>
</head>
<body>
<%
    String username = null, sessionID = null;
    if (request.getSession().getAttribute("username") == null) {
        response.sendRedirect("E23L05_SessionLogout.jsp");
    } else {
        username = request.getSession().getAttribute("username").toString();
        sessionID = request.getSession().getId();
    }
%>
Username: <%= username %><br>
Session ID: <%= sessionID %><br>
This is a restricted area!<br>
<form action="<%= request.getContextPath() %>/E23L05_RestrictedAreaController" method="get">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="Logout">
</form>
</body>
</html>
