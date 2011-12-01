<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2011-10-13
  Time: 10:57:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>根据当前的星期显示不同的提示信息</title>
</head>
<body>
<!-- 获取星期并保存到变量中   -->

<c:set var="week" >
    <%=new java.util.Date().getDay()%>
</c:set>
<c:choose>
    <c:when test="${week==0}">今天是星期日：<br></c:when>
    <c:otherwise>今天是星期<c:out value="${week}"/>：<br></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${week==0 || week==6}">今天是休息日，放松一下心情吧！</c:when>
    <c:when test="${week==1}" >新的一周开始了，努力学习吧！</c:when>
    <c:otherwise>继续努力学习吧！</c:otherwise>
</c:choose>
</body>
</html>