<%@ page contentType="text/html; charset=GBK" %>

<%@ page import="servlet.*, java.util.*" %>

<html>
<head>
    <title>
        session
    </title>
</head>
<body>
<%
    out.println("��������");
    Iterator it = ServletListenerTest.getSet();
    if(it==null){
        out.println("��ȡ���յ�iterator");
    }
    while(it.hasNext()) {
        try {
            Object o=it.next();
            if(o!=null&&o instanceof HttpSession){
                HttpSession session1 = (HttpSession)o;

                out.println("Id: " + session1.getId());
                out.println("Name: " + session1.getAttribute("NAME") + "<br />");
                out.println("Password: " + session1.getAttribute("PASSWORD") + "<br />");
                out.println("CreationTime: " + session1.getCreationTime() + "<br /><br />");


%>
<a href="end.jsp?sessionId=<%=session1.getId() %>">ǿ��ע��</a>
<%      }else{
    out.println("HttpSessionΪ��");
}
} catch(Exception e) {
    out.println("�׳��쳣");
    e.printStackTrace();
//    return;
}

}
%>
</body>
</html>
