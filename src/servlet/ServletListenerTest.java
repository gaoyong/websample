package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

/**
 * <p>Title: </p>
 *
 * <p>Description: </p>
 *
 * <p>Copyright: Copyright (c) 2011</p>
 *
 * <p>Company: </p>
 *
 * @author not attributable
 * @version 1.0
 */


public class ServletListenerTest extends HttpServlet implements HttpSessionListener {
    private final String CONTENT_TYPE = "text/html; charset=gb2312";
    private final String TYPE = "gb2312";

    private static Hashtable ht = new Hashtable();
    private HttpSession hs;


    public void sessionCreated(HttpSessionEvent hse) {
        hs = hse.getSession();
        ht.put(hs.getId(), hs);

        System.out.println("put: " + hs.getId());
    }

    public void sessionDestroyed(HttpSessionEvent hse) {
        ht.remove(hse);

        System.out.println("remove: " + hs.getId());
    }



    public static Iterator getSet() {
        for(Object o:ht.keySet()){
            System.out.println(ht.get(o));
        }
        System.out.println();
        return ht.values().iterator();
    }

    public static HttpSession getSession(String id) {
        return (HttpSession)ht.get(id);
    }



    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.setCharacterEncoding(TYPE);
        response.setContentType(CONTENT_TYPE);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        doGet(request, response);
    }
}

