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
    out.println("测试内容");
    Iterator it = ServletListenerTest.getSet();
    if(it==null){
        out.println("获取到空的iterator");
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
<a href="end.jsp?sessionId=<%=session1.getId() %>">强制注销</a>
<%      }else{
    out.println("HttpSession为空");
}
} catch(Exception e) {
    out.println("抛出异常");
    e.printStackTrace();
//    return;
}

}
%>
</body>
</html>
