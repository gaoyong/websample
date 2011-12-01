<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2011-9-19
  Time: 21:55:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head><title>Simple jsp page</title></head>
  <body>
  <%
  Cookie[] cookies = request.getCookies();
  %>
  <h1 align="center">
  CookieePage
  </h1>
  <p>
  Welcome to study Cookie!!!
  </p>
  <p>
  <%
  if(cookies!=null&&cookies.length>0){
  for(Cookie co:cookies)
  {
  %>
  name:<%= co.getName() %><br/>
  value:<%= co.getValue() %>
  <%
  }
      }else{
      out.println("cookies为空");
  }
  %>
  </p>
  </body>

</html>