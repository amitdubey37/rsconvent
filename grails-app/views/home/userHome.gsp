<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 15/6/15
  Time: 6:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <title></title>
</head>

<body>
<div><img src="${createLink(controller: 'home',action: 'dispPic',id: session.user.id)}" height="100" width="100"></div>
<div><h3>Welcome Mr. ${session.user.username}</h3></div>

</body>
</html>