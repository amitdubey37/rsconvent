<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 24/6/15
  Time: 4:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Change password</title>
</head>

<body>
    <g:form action="setpassword">
        <input  type="text" name="username" placeholder="User Name"/><br>
        <input type="password" name="password" placeholder="password"/><br>
        <input type="submit" value="Change Password">
    </g:form>

</body>
</html>