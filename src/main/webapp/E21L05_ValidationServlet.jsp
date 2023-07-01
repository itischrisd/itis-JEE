<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<body>
<form action="E21L04_Controller" method="post">
    Full name:
    <label>
        <input type="text" name="name" required/>
    </label>
    <br>
    Gender:
    <label>
        <input type="radio" name="gender" value="Male" checked="checked">
    </label> Male
    <label>
        <input type="radio" name="gender" value="Female">
    </label> Female
    <br>
    Languages:
    <label>
        <input type="checkbox" name="language" value="English">
    </label> English
    <label>
        <input type="checkbox" name="language" value="German">
    </label> German
    <label>
        <input type="checkbox" name="language" value="French">
    </label> French
    <br>
    Country:
    <label>
        <select name="country">
            <option value="Poland">Poland</option>
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="Germany">Germany</option>
            <option value="Italy">Italy</option>
            <option value="France">France</option>
        </select>
    </label>
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
