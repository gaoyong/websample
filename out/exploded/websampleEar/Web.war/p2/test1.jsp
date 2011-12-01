<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
//    这个JSP跑通了
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>插入学生信息</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="styles.css">


</head>
<body>
<%
//    request.setCharacterEncoding("UTF-8");
//    String id=request.getParameter("id");
//    String name=request.getParameter("name");
//    System.out.println(name);
//    String age=request.getParameter("age");
//    String gender=request.getParameter("gender");
//    String major=request.getParameter("major");

    String idStr="1";
    int id=Integer.parseInt(idStr);
    String name="name";
//    System.out.println(name);
    String ageStr="20";
    int age=Integer.parseInt(ageStr);
    String gender="gender";
    String major="major";

    try{
        Connection conn=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/msdb";
        String user="root";
        String password="root";
        conn=DriverManager.getConnection(url,user,password);
        stmt=conn.createStatement();

        String insert="insert into student (id,name,age,gender,major)values('"+id+"','"+name+"','"+age+"','"+gender+"','"+major+"')";
        System.out.println("SQL:"+insert);
        int result=stmt.executeUpdate(insert);%>

<center>
    <%
        if(result==1)
        {
            out.print("<br><h3>成功插入！</h3>");
        }
        else{
            out.print("<br><h3>输入失败！</h3>");
        }

    %>

    <br>
    <a href=submit.jsp>返回信息输入页面</a> <a href=layout.jsp>进入信息查询页面</a>
</center>
<%
        if(rs!=null)
        {
            rs.close();
        }

        if(stmt!=null)
        {
            stmt.close();
        }
        if(conn!=null)
        {
            conn.close();
        }

    }catch(Exception e){
        e.printStackTrace();
    }
%>
</body>
</html>
