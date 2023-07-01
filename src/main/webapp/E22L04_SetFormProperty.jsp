<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Properties</title>
</head>
<body>
<jsp:useBean id="user" class="com.jspservlets.classes.E22L01_User" scope="session"/>
<form action="E22L04_GetFormProperty.jsp" method="post">
    First name:
    <label>
        <input type="text" name="firstName" value='<jsp:getProperty name="user" property="firstName"/>'/>
    </label>
    <br>
    Last name:
    <label>
        <input type="text" name="lastName" value='<jsp:getProperty name="user" property="lastName"/>'/>
    </label>
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
