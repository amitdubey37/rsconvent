<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 15/6/15
  Time: 3:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <title></title>
</head>

<body>
<g:form controller="user" action="auth">
    <input type="text" name="username" placeholder="User Name"><br>
    <input type="password" name="password" placeholder="Password"><br><br>
    <input type="submit" value="Login"/>
</g:form>
</body>
</html>