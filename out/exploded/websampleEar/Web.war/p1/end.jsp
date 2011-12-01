<%@ page contentType="text/html; charset=GBK" %>

<%@ page import="servlet.*" %>
<html>
<head>
<title>
end
</title>
</head>
<body>
<%
  String ID = request.getParameter("sessionId");

  if(ID != null) ServletListenerTest.getSession(ID).invalidate();

  response.sendRedirect("session.jsp");
%>
</body>
</html>
