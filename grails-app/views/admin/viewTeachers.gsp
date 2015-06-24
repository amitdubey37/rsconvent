<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 23/6/15
  Time: 12:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta  name="layout" content="rsconvent"/>
    <title>View Teachers</title>
</head>

<body>
%{--<g:if test="${flash.message}">--}%
%{--<script>--}%
%{--$('#myModal1').modal('show')--}%
%{--</script>--}%
%{--</g:if>--}%
<div class="container">
    <div class="row">
        <div class="panel-default">
            <div class="panel-heading">Class Details</div>
            <table class="table" id="myTable" name="myTable">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>View</th>
                    <th>Edit</th>
                </tr>
                </thead>
                <tbody>
                <g:render template="teacherTemplate" collection="${teachers}" var="teacher"/>
                </tbody>
            </table>
        </div>
    </div>
</div>
<hr>

</body>
</html>