<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scriplets</title>
</head>
<body>
<%
    int x = 25;
    out.println(x);
    if (x > 25)
        out.println("<br>x is greater than 25.");
    else
        out.println("<br>x is not greater than 25.");
    for (int i = 0; i < 10; i++) {
        out.println("<br>");
        out.println(i);
    }
%>
</body>
</html>