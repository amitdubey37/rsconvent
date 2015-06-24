<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 24/6/15
  Time: 5:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js',file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'TeacherForm.js')}"></script>
    <style>
    .error{
        color: darkred;
        font-style: italic;
        font-size : 12px;
    }
    </style>
    <title></title>
</head>

<body>

<div class="container">
    %{--<div class="error">--}%
        %{--<g:if test="${flash.message}">--}%
            %{--${flash.message}--}%
        %{--</g:if>--}%
    %{--</div>--}%
    <div class="row">
        <div class="col-md-8">
            <h3>Teacher Registration</h3>
            <g:uploadForm action="teacherRegister" name="TeacherForm" id="contactForm" >
                <div class="control-group form-group">
                    <div class="controls">
                        <label>First Name:</label>
                        <input type="text" class="form-control" id="firstName" name="firstName"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Last Name:</label>
                        <input type="text" class="form-control" id="lastName" name="lastName"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>User Name:</label>
                        <input type="text" class="form-control" id="username" name="username"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Password:</label>
                        <input type="password" class="form-control" id="password" name="password"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Confirm Password:</label>
                        <input type="password" class="form-control" id="cnf_password" name="cnf_password"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Email:</label>
                        <input type="email" class="form-control" id="email" name="email"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Phone Number:</label>
                        <input type="text" class="form-control" id="phone" name="phone"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Address:</label>
                        <input type="text" class="form-control" id="address" name="address"/>
                        <div class="error" name="errorContainer"></div>
                    </div>
                </div>


                <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">Register</button>
            </g:uploadForm>
        </div>

    </div>

</div><hr>
</body>
</html>