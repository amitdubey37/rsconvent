<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 15/6/15
  Time: 3:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js',file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'signupForm.js')}"></script>
    <title></title>
</head>

<body>
<div class="error">
    <g:if test="${flash.message}">
        Registration Failed, Try Again!
    </g:if>
</div>
<div>
<g:uploadForm controller="user" action="submission" id="signupForm" name="signupForm">
    <fieldset>
        <legend>Registration</legend>
        <input type="text" name="firstName" placeholder="First Name" id="firstName"/>
        <input type="text" name="lastName" placeholder="Last Name" id="lastName"/><br>
        <input type="text" name="username" placeholder="User Name" id="username"/><br>
        <input type="password" name="password" placeholder="Password" id="password"/><br>
        <input type="password" name="cnf_password" placeholder="Confirm Password" id="cnf_password"/><br>
        <input type="email" name="email" placeholder="Email" id="email"/><br>
        <input type="text" name="phone" placeholder="Contact Number" id="phone"/><br>
        <input type="text" name="address" placeholder="Address" id="address"/><br>
        <label>User Group</label>
        <select name="userGroup">
            <option value="Student">Student</option>
            <option value="Teacher">Teacher</option>
            <option value="Guardian">Guardian</option>
        </select><br>
        <input type="file" name="pic"/><br>
        <input type="submit" class="btn btn-primary" value="Register"/>
    </fieldset>
</g:uploadForm>
</div>
</body>
</html>