<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>主页</title>
	</head>
	<body>
		<%
            Context initCtx = new InitialContext();
            javax.sql.DataSource ds = (javax.sql.DataSource)initCtx.lookup("java:comp/env/jdbc/mysql");
            Connection conn = ds.getConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from customer");
            while(rs.next()){
                 out.println("id:"+rs.getInt("id")+",name"+rs.getString("name"));
                 out.println("<br/>");
            }
            rs.close();
            stmt.close();
            conn.close();
//            ds.
//            String test=(String)session.getAttribute("test");
			Integer count = (Integer) session.getAttribute("count");
			if (session.getAttribute("count") != null) {

				session.setAttribute("count", new Integer(count.intValue()+1));
//                session.setAttribute("test",new String("test"));
			} else {
				count = 1;
                session.setAttribute("count", count);
			}
//            out.println(test);
			out.print("您是第"+count+"次访问这个页面");
		%>
	</body>
</html>
