<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forms</title>
</head>
<body>
Name: <%= request.getParameter("name") %><br>
Gender: <%= request.getParameter("gender") %><br>
Languages:
<%
    var languages = request.getParameterValues("language");
    if (languages != null) {
        for (var language : languages)
            out.println(language + " ");

    } else
        out.println("None selected");
%><br>
Country: <%= request.getParameter("country") %><br>

</body>
</html>
