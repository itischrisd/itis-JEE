<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>URL Parameter</title>
</head>
<body>
<%
    out.println("Value 1: " + request.getParameter("getValue1"));
    out.println("Value 2: " + request.getParameter("getValue2"));
%>
</body>
</html>