<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>ע�ᴦ��ҳ��</title>
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
        System.out.println("�û�������Ϊ��");
        validate = 0;
        request.setAttribute("message", "�û�������Ϊ��");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    } else if (pwd == null || pwd.equals("")) {
        System.out.println("���벻��Ϊ��");
        validate = 0;
        request.setAttribute("message", "���벻��Ϊ��");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    } else if (!vaildatepwd.equals(pwd)) {
        System.out.println("������������벻һ��");
        validate = 0;
        request.setAttribute("message", "������������벻һ��");
        request.getRequestDispatcher("register.jsp").forward(request,
                response);
    }


    if (validate > 0) {
        request.getRequestDispatcher("login.jsp").forward(request,
                response);
    } else {
        out.println("<font color='red'>������!!!</font>");
    }
%>
</body>
</html>