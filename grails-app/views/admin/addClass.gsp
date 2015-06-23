<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 22/6/15
  Time: 8:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <title></title>
</head>

<body>
<g:render template="message" model='[msg : "${flash.message}"]'/>
<g:if test="${flash.message}">
    <script>
        $('#myModal1').modal('show')
    </script>
</g:if>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <h3>Enter Class Details</h3>
            <g:form action="updateClass">
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Class</label>
                        <input type="text" name="name" class="form-control" id="class"/>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Section</label>
                        <input type="text" name="section" class="form-control" id="section"/>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Maximum Students</label>
                        <input type="number" name="maxStudent" class="form-control" id="maxStudent"/>
                    </div>
                </div>
                <br>
                <input class="btn btn-primary" type="submit" value="Add Class"/>
            </g:form>
        </div>

        </div>
    </div>
</div>
    <hr>
</body>
</html>