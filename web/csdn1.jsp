<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2011-10-12
  Time: 11:15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <title>My JSP 'example_0&1.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

  </head>

  <body>
  <div align="center">
       <p><strong>please choose</strong>
       <form name="form1" method="post">
       <input type="checkbox" name="fruit" value="very bad!!!">very bad
       <input type="checkbox" name="fruit" value="general!!!">general
       <input type="checkbox" name="fruit" value="good!!!">good
       <input type="checkbox" name="fruit" value="very good!!!">very good
       <p><strong>Gender:</strong>
          <input type="radio" name="sex" value="male">male
          <input type="radio" name="sex" value="female">female
       </p>
       <p><input type="submit" name="submit" value="submit"></p>
       </form>
       </div>
       </center>
    <%
       request.setCharacterEncoding("GBK");
       String msg="";
       String sex=request.getParameter("sex");
       String fruit[]=request.getParameterValues("fruit");
       int len=fruit.length;
       if(sex==null) {msg="please choose gender!!!<br>";}
       if(sex.equals("male")) {
           msg="Hello!Sir!<br>";
       }
       if(sex.equals("female")) {
           msg="Hello!Miss!<br>";
       }
       if(len==0) {msg=msg+"please choose fruit!!";}
       else
       {
          out.print("<h3>thanks!!!!!</h3><br>");
          msg=msg+"you choosed:";
          for(int i=0;i<len;i++)
          {
             msg=msg+fruit[i]+"/";
          }
       }
       out.print(msg);
     %>
  </body>
</html>