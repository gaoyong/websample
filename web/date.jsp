<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: gaoyong
  Date: 2011-10-10
  Time: 22:44:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date birthday=new Date(); //birthday表示你获得的日期
    String birStr=new SimpleDateFormat("yyyyMMdd").format(birthday);
    request.setAttribute("birthday",birStr);
    System.out.println(birStr);
%>
<html>
  <head><title>Simple jsp page</title></head>
  <body>Place your content here
  <html:text property="birthday" value="${birStr}">
  </html:text>
  </body>
</html>