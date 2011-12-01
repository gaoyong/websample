<%@ page contentType="text/html; charset=GBK" %>

<html>
<head>
    <title>
        logout
    </title>
</head>
<body>
<%
    if(!session.isNew())
        session.invalidate();

    out.println("The session is already destroyed.");
%>
</body>
</html>
