<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 24/6/15
  Time: 6:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Profile</title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="panel-default">
            <div class="panel-heading">Class Details</div>
            <table class="table" id="myTable" name="myTable">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Group</th>
                    <g:if test="${user.userGroup==com.rsconvent.enums.Group.TEACHER}">
                        <g:if test="${user.classTeacher}">
                            <th>Class Teacher</th>
                        </g:if>
                    </g:if>
                    <g:if test="${user.userGroup==com.rsconvent.enums.Group.STUDENT}">
                        <th>Father Name</th>
                        <th>Mother Name</th>
                        <th>Percentage</th>
                    </g:if>
                    <th>Gender</th>
                    <th>Date Of Birth</th>
                </tr>
                <tr>
                    <th>${user.firstName} ${user.lastName}</th>
                    <th>${user.username}</th>
                    <th>${user.email}</th>
                    <th>${user.phone}</th>
                    <th>${user.address}</th>
                    <th>${user.userGroup}</th>
                    <g:if test="${user.userGroup==com.rsconvent.enums.Group.TEACHER}">
                        <g:if test="${user.classTeacher}">
                            <th>${user.classTeacher}</th>
                        </g:if>
                    </g:if>
                    <g:if test="${user.userGroup==com.rsconvent.enums.Group.STUDENT}">
                        <th>${user.fatherName}</th>
                        <th>${user.motherName}</th>
                        <th>${user.percentage}</th>
                    </g:if>
                    <th>${user.gender}</th>
                    <th>${user.dob}</th>

                </tr>
                </thead>

            </table>
        </div>
    </div>
</div>
<hr>

</body>
</html>