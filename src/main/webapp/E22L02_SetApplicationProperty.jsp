<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Properties</title>
</head>
<body>
<jsp:useBean id="user" class="com.jspservlets.classes.E22L01_User" scope="application"/>
<jsp:setProperty name="user" property="firstName" value="Jan"/>
<jsp:setProperty name="user" property="lastName" value="Malinowski"/>
User values has been set.
</body>
</html>
