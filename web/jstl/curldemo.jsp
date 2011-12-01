<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gaoyong
  Date: 2011-11-4
  Time: 1:01:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head><title>Simple jsp page</title></head>
  <body>
  <c:url var="myurl" value="student.jsp" scope="session">
        <c:param name="userName" value="gaoyong"></c:param>
  </c:url>
  <c:out value="${myurl}"></c:out>
  <c:url value="student.jsp"></c:url>
  </body>
</html>