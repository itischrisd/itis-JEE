<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session Login</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/E23L01_Controller" method="post">
    Username:
    <label>
    <input type="text" name="username" placeholder="Enter username">
    </label><br>
    Password:
    <label>
    <input type="password" name="password">
    </label><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
