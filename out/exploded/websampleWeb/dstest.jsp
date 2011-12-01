<%@ page import="java.sql.Connection" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2011-9-6
  Time: 15:30:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head><title>数据源测试</title></head>
  <%
      try{
            Context ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/TestDB");
            Connection conn = ds.getConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from customer");
            while(rs.next()){
                System.out.println(rs.getInt("id"));
                System.out.println(rs.getString("name"));
                System.out.println(rs.getInt("age"));
            }
           rs.close();
           stmt.close();
           conn.close();
      }catch(Exception e){
           e.printStackTrace();
      }

   %>
  <body>Place your content here</body>
</html>