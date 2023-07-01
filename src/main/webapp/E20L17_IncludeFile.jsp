<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include File</title>
</head>
<body>
<%--Static content--%>
<%@include file="file1.txt"%>
<br>
<%--Dynamic content--%>
<jsp:include page="file2.txt"/>
</body>
</html>