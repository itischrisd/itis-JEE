<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Excercise</title>
</head>
<body>
<h1>First Java web app</h1>
<a href="<%= request.getContextPath() %>/E20L21_Controller?page=login">Login</a><br>
<a href="<%= request.getContextPath() %>/E20L21_Controller?page=signup">Sign Up</a><br>
<a href="<%= request.getContextPath() %>/E20L21_Controller?page=about">About</a><br>
</body>
</html>