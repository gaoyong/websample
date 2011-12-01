<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
</head>
<%
    request.setCharacterEncoding("GBK");
    String message = (String) request.getAttribute("message");
    if (message != null && !message.equals("")) {
        out.print("<font color='red'>" + message + "</font>");
    }
%>
<body>

<form name="myform" method="post" action="control.jsp">
    <table>
        <tr>
            <td>
                用户名: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td>
                <input type="text" name="userName">
            </td>
        </tr>
        <tr>
            <td>
                请输入登录密码:&nbsp;&nbsp;
            </td>
            <td>
                <input type="password" name="pwd">
            </td>
        </tr>
        <tr>
            <td>
                再次输入密码: &nbsp; &nbsp;
            </td>
            <td>
                <input type="password" name="validatpwd">
                <br>
                <br>
            </td>
        </tr>
        <tr>
            <td>
                提交:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br>
            </td>
            <td>
                <input type="submit" value="注册">
            </td>
        </tr>
    </table>
</form>
</body>
</html>