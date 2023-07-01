<%@ page import="java.util.Date,com.jspservlets.classes.E20L18_UserDefined" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%--This is a directive--%>
<html>
<head>
    <title>Include Class</title>
</head>
<body>
<%= new Date()%>
<br>
<%
    out.println(new E20L18_UserDefined().demo());
%>
</body>
</html>