<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Properties</title>
</head>
<body>
<jsp:useBean id="user" class="com.jspservlets.classes.E22L01_User" scope="page"/>
First name: <jsp:getProperty name="user" property="firstName"/><br>
Last name: <jsp:getProperty name="user" property="lastName"/><br>
<jsp:setProperty name="user" property="firstName" value="Jan"/>
<jsp:setProperty name="user" property="lastName" value="Malinowski"/>
User values has been set.<br>
First name: <jsp:getProperty name="user" property="firstName"/><br>
Last name: <jsp:getProperty name="user" property="lastName"/>
</body>
</html>
