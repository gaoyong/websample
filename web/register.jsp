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
                �û���: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td>
                <input type="text" name="userName">
            </td>
        </tr>
        <tr>
            <td>
                �������¼����:&nbsp;&nbsp;
            </td>
            <td>
                <input type="password" name="pwd">
            </td>
        </tr>
        <tr>
            <td>
                �ٴ���������: &nbsp; &nbsp;
            </td>
            <td>
                <input type="password" name="validatpwd">
                <br>
                <br>
            </td>
        </tr>
        <tr>
            <td>
                �ύ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br>
            </td>
            <td>
                <input type="submit" value="ע��">
            </td>
        </tr>
    </table>
</form>
</body>
</html>