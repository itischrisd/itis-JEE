<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forward</title>
</head>
<body>
This is original page.
<%--<jsp:forward page="E20L19_Forwarding.jsp"/>--%>
<%
    request.getRequestDispatcher("E20L19_Forwarded.jsp").forward(request, response);
%>
</body>
</html>