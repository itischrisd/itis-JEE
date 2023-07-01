<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Properties</title>
</head>
<body>
<jsp:useBean id="user" class="com.jspservlets.classes.E22L01_User" scope="application"/>
First name: <jsp:getProperty name="user" property="firstName"/><br>
Last name: <jsp:getProperty name="user" property="lastName"/>
</body>
</html>
