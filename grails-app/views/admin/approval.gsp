<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 15/6/15
  Time: 6:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <title></title>
</head>

<body>
<div class="panel-default">
    <div class="panel-heading">Approve Requests</div>
    <table class="table">
        <thead>
            <tr>
                <th>Username</th>
                <th>First Nmae</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Profile Pic</th>
                <th>Approve</th>
             </tr>
        </thead>
        <tbody>
            <g:render template="pending" collection="${users}" var="user"/>
        </tbody>
        </table>
</div>
</body>
</html>