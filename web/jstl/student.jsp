<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 上面这一行非常重要，如果不引入直接的结果就是c标签完全失效--%>
<%@ page import="bean.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: gaoyong
  Date: 2011-11-2
  Time: 17:17:26
  To change this template use File | Settings | File Templates.
  这个例子是用来学习JSTL里面的c标签进行迭代输出
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Student> stuList=new ArrayList<Student>();
    Student s1=new Student(1,"name1","add1");
    Student s2=new Student(2,"name2","add2");
    stuList.add(s1);
    stuList.add(s2);
    stuList.add(null);
    request.setAttribute("stuList",stuList);
//    request.
%>
<html>
<head><title>Simple jsp page</title></head>
<body>
内容
<c:forEach items="${stuList}" var="student">
    <c:if test="${!empty student}">
        <a ><c:out value="${student.id}"/>测试</a><br/>
    </c:if>
    <c:if test="${empty student}">
        <a >空对象输出</a><br/>    
    </c:if>
    <c:if test="${student.name == 'name2'}">
        <c:out value="name2对象输出"></c:out><br/>        
    </c:if>
</c:forEach>


</body>
</html>