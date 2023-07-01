<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declarations</title>
</head>
<body>
<%!
    int x = 33;

    String message() {
        return "String through method";
    }
%>
<%= x %><br>
<%= message() %>
</body>
</html>