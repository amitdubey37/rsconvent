<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 16/6/15
  Time: 1:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <title></title>
</head>

<body>
<div>
    <g:form action="sender">
        <label>Send To:</label><br>
        <select name="userGroup">
            <option value="All">All</option>
            <option value="Student">Student</option>
            <option value="Teacher">Teacher</option>
            <option value="Guardian">Guardian</option>
        </select><br>
        <label>Sending To:</label>
        <g:textArea name="sendingTo"></g:textArea>
        <label>Message</label><br>
        <textarea name="Message" rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea><br>
        <input type="Submit" value="Send"/>
    </g:form>
</div>

</body>
</html>