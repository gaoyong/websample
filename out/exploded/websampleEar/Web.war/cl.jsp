<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������</title>
</head>
<% int sum=0; %>
<%
int dk=0;
int xf=0;
for(int i=1;i<=3;i++){
dk=Integer.parseInt(request.getParameter("dk"+i));//����������ˣ���������������������⣬�ҵı��������ȡ������¼��ҳ������в�������dk1,dk2�����ֵ��Ȼ������ܺ͵�
xf=Integer.parseInt(request.getParameter("xf"+i));//
sum=sum+dk*xf;
}
%>
<body>
<%=sum%>
</body>
</html>