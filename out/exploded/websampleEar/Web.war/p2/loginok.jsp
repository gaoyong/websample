<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2011-10-2
  Time: 11:15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=request.getServerName() %></title>
</head>

<body>
<%
    //    request.setCharacterEncoding("GBK");
    String username=request.getParameter("name");
    String password=request.getParameter("pass");
    if(username.equals("gaoyong")&&password.equals("123456")){
       out.println("welcome");
  %><jsp:forward page="clock.jsp"/>
 <%
}else
      out.println("sorry");
%>

</body>
</html>