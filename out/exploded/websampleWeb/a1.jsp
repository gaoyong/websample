<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>录入页面</title>
</head>

<body>
<form name="form1" action="cl.jsp">
<%
for(int i=1;i<=3;i++){
%>
单科成绩: <input name="dk<%=i%>" type="text" > 该科学分：<input name="xf<%=i%>" type="text" > <br><br>
<%
}
%>
<p>
<input name="tj" type="submit" value="提交" />
</p>

</form>
</body>
</html>