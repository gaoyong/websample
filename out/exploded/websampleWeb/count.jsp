<%@ page language="java" contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*" %>      //导入包
<html>
<head>
<title>第一个JSP访问页面</title>
</head>
<body>
<center>
<table style="border:#000000 double 1px;">
<tr>
<td>
<%= "第一个JSP访问页面" %></td>
</tr>
<tr>
<td>
    <%!
        int i=0;
        File file=new File("count.txt");
        synchronized void count()
        {
            if(!file.exists())
            {
                i++;
                try
                {
                    file.createNewFile();
                    FileOutputStream out=new FileOutputStream("count.txt");
                    DataOutputStream dataOut=new DataOutputStream(out);
                    dataOut.writeInt(1);
                    out.close();
                    dataOut.close();
                }
                catch(IOException ee){
                    ee.printStackTrace();
                }
            }
            else
            {
                try
                {
                    FileInputStream in=new FileInputStream("count.txt");
                    DataInputStream dataIn=new DataInputStream(in);
                    i=dataIn.readInt();
                    i++;
                    in.close();
                    dataIn.close();
                    FileOutputStream out=new FileOutputStream("count.txt");
                    DataOutputStream dataOut=new DataOutputStream(out);
                    dataOut.writeInt(i);
                    out.close();
                    dataOut.close();
                }
                catch(IOException ee){};
            }
        }
    %>
  <% count(); %>

您是第<%=i %>个访问本站的客户</td>
</tr>
</table>
</center>
</body>
</html>
