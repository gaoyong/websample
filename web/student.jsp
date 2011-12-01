<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2011-11-2
  Time: 17:17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Student> stuList=new ArrayList<Student>();
    Student s1=new Student(1,"name1","add1");
    Student s2=new Student(2,"name2","add2");
    stuList.add(s1);
    stuList.add(s2);
    request.setAttribute("stuList",stuList);
//    request.
%>
<html>
<head><title>Simple jsp page</title></head>
<body>
内容
<c:forEach items="${stuList}" var="student">
    <a ><c:out value="${student.id}"/>测试</a>
</c:forEach>

</body>
</html>