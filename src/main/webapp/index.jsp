<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Project homepage" %></h1>
<br/>
<a href="hello-servlet">00-00 Hello Servlet</a><br>
<a href="hello-world">20-06 Hello World</a><br>
<a href="E20L06_HelloHTML.html">20-07 Hello HTML</a><br>
<a href="E20L07_HelloJSP.jsp">20-07 Hello JSP</a><br>
<a href="E20L09_Expressions.jsp">20-09 Expressions</a><br>
<a href="E20L10_Scriplets.jsp">20-10 Scriplets</a><br>
<a href="E20L11_Declarations.jsp">20-11 Declarations</a><br>
<a href="E20L12_Comments.jsp">20-12 Comments</a><br>
<a href="E20L13_Directives.jsp">20-13 Directives</a><br>
<a href="annotations">20-14 Annotations</a><br>
<a href="E20L15_DeploymentDescriptor.jsp">20-15 Deployment Descriptors</a><br>
<a href="url-parameter?getValue1=val1&getValue2=val2">20-16 URL Parameter Servlet</a><br>
<a href="E20L16_URLParameter.jsp?getValue1=val1&getValue2=val2">20-16 URL Parameter JSP</a><br>
<a href="E20L17_IncludeFile.jsp">20-17 Include file</a><br>
<a href="E20L18_IncludeClass.jsp">20-18 Include class</a><br>
<a href="E20L19_Forward.jsp">20-19 Forwarding</a><br>
<a href="E20L19_Redirect.jsp">20-19 Redirecting</a><br>
<a href="E20L21_Exersise.jsp">20-21 Exercise</a><br>
<a href="E21L03_Forms.jsp">21-03 Forms JSP</a><br>
<a href="E21L04_Forms.jsp">21-04 Forms Servlet</a><br>
<a href="E21L05_ValidationJSP.jsp">21-05 Validation JSP</a><br>
<a href="E21L05_ValidationServlet.jsp">21-04 Validation Servlet</a><br>
<a href="E22L01_GetSessionProperty.jsp">22-01 Get Session Property</a><br>
<a href="E22L01_SetSessionProperty.jsp">22-01 Set Session Property</a><br>
<a href="E22L02_GetApplicationProperty.jsp">22-02 Get Application Property</a><br>
<a href="E22L02_SetApplicationProperty.jsp">22-02 Set Application Property</a><br>
<a href="E22L02_PageProperty.jsp">22-02 Page Property</a><br>
<a href="E22L03_SetRequestProperty.jsp">22-03 Request Property</a><br>
<a href="E22L04_SetFormProperty.jsp">22-04 Form with Property</a><br>
<a href="E23L01_SessionLogin.jsp">23-01 Session login</a><br>
<a href="E23L03_SessionCookie.jsp">23-03 Session cookie</a><br>
<a href="E23L04_CookieLogout.jsp">23-04 Cookie logout</a><br>
<a href="E23L05_SessionLogout.jsp">23-05 Session logout</a><br>
<a href="<%= request.getContextPath() %>/E23L06_home?action=login">23-06 Organizing URLs</a><br>
<a href="<%= request.getContextPath() %>/E23L07_home?action=login">23-07 Organizing URLs PART 2</a><br>
</body>
</html>