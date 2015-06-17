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
<div class="container bs-docs-container">
<div class="row">
    <div>
        <div><img src="${createLink(controller: 'home',action: 'dispPic',id: session.user.id)}" height="100" width="100"></div>
        <div><h3>Welcome Admin</h3></div>
    </div>
    <div>
    <aside role="complementary" class="col-md-3" style="float: right">
        <nav class="bs-docs-sidebar hidden-print hidden-xs hidde-sm affix-top">
            <ul class="nav bs-docs-sidenav">
                <li>
                    <g:link action="approval">Pending Approval Requests</g:link>
                </li>
                <li>
                    <g:link action="announce">Announce</g:link>
                </li>
            </ul>
        </nav>
    </aside>
    </div>
</div>
</div>
</body>
</html>