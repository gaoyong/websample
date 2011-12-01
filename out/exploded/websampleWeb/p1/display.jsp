<%@ page contentType="text/html; charset=GBK" %>

<html>
<head>
<title>
display
</title>
</head>
<body>
<%
  if(session.isNew()) response.sendRedirect("JspHtml.jsp");

  out.println("Id: " + session.getId() + "<br />");
  out.println("Name: " + session.getAttribute("NAME") + "<br />");
  out.println("Password: " + session.getAttribute("PASSWORD") + "<br />");
  out.println("CreationTime: " + session.getCreationTime() + "<br />");
%>
<br />
<a href="session.jsp">¹ÜÀí</a><br />
<a href="logout.jsp">×¢Ïú</a>
</body>
</html>
