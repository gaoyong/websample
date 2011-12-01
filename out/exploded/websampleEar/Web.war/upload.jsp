<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2011-8-30
  Time: 11:08:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp+Servlet upload file</title>
</head>
<body>
<form name="upform" action="UploadServlet" method="POST" enctype="multipart/form-data">
    <input type ="file" name="file1" id="file1"/><br/>
    <input type ="file" name="file2" if="file2"/><br/>
    <input type ="file" name="file3" id="file3"/><br/>
    <input type="submit" value="Submit" /><br/>
    <input type="reset" />
</form>
</body>
</html>
