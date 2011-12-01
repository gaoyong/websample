<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2011-10-2
  Time: 11:16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title> <%=request.getServerName() %></title>
  </head>

  <body>
  <%
      out.println("当前时间是："+new Date());
      response.setHeader("Refresh","1");
  %>
  </body>
</html>
