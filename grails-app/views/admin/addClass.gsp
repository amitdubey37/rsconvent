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
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <h3>Enter Class Details</h3>
            <g:form action="sender">
                <div class="control-group form-group">
                    <div class="controls">
                        <label>User Group:</label>
                        <select type="text" class="form-control" name="userGroup">
                            <option value="All">All</option>
                            <option value="Student">Student</option>
                            <option value="Teacher">Teacher</option>
                            <option value="Guardian">Guardian</option>
                        </select>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Message:</label>
                        <textarea name="Message" rows="10" cols="100" class="form-control" id="message" maxlength="999" style="resize:none"></textarea>
                    </div><br>
                <button type="submit" class="btn btn-primary">Send</button>
            </g:form>
        </div>

        </div>
    </div>
</div>
    <hr>
</body>
</html>