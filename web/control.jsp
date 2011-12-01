<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>注册处理页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String name = request.getParameter("userName");
    String pwd = request.getParameter("pwd");
    out.println(name + " " + pwd);
    String vaildatepwd = request.getParameter("validatpwd");

    System.out.println("name"+name);
    System.out.println("pwd"+pwd);
    System.out.println("vaildatepwd"+vaildatepwd);

    int validate = 1;

    if (name == null || name.equals("")) {
        System.out.println("用户名不能为空");
        validate = 0;
        request.setAttribute("message", "用户名不能为空");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    } else if (pwd == null || pwd.equals("")) {
        System.out.println("密码不能为空");
        validate = 0;
        request.setAttribute("message", "密码不能为空");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    } else if (!vaildatepwd.equals(pwd)) {
        System.out.println("两次输入的密码不一致");
        validate = 0;
        request.setAttribute("message", "两次输入的密码不一致");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    }


    if (validate > 0) {
        request.getRequestDispatcher("login.jsp").forward(request,
                response);
    } else {
        out.println("<font color='red'>出错了!!!</font>");
    }
%>
</body>
</html>