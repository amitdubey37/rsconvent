<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 23/6/15
  Time: 5:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="panel-default">
            <div class="panel-heading">Class Details</div>
            <table class="table" id="myTable" name="myTable">
                <thead>
                <tr>
                    <th>Class</th>
                    <th>Section</th>
                    <th>View</th>
                    <th>Edit</th>
                </tr>
                </thead>
                <tbody>
                <g:render template="classTemplate" collection="${divisions}" var="division"/>
                </tbody>
            </table>
        </div>
    </div>
</div>
<hr>
</body>
</html>