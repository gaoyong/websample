<%@ page contentType="text/html; charset=gb2312" %>


<%
  String name = request.getParameter("userName");
  String password = request.getParameter("userPassword");
%>

<html>
  <head>
  <title>JspTest</title>
  </head>
  <body>
  <%
  try {
  if(name == null || name.length() == 0)
  throw new Exception("Name null");
  if(password == null || password.length() == 0)
  throw new Exception("Password null");

  session.setAttribute("NAME", name);
  session.setAttribute("PASSWORD", password);

  response.sendRedirect("display.jsp");
  } catch(Exception e) {
  e.printStackTrace();
  }
  %>
  </body>
</html>