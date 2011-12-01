package servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DefaultFileItemFactory;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

/**
 * Servlet implementation class for Servlet: UploadServlet
 *
 */
public class UploadServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    File tmpDir = null;//初始化上传文件的临时存放目录
    File saveDir = null;//初始化上传文件后的保存目录
    public UploadServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            if(ServletFileUpload.isMultipartContent(request)){
                DiskFileItemFactory dff = new DiskFileItemFactory();//创建该对象
                dff.setRepository(tmpDir);//指定上传文件的临时目录
                dff.setSizeThreshold(1024000);//指定在内存中缓存数据大小,单位为byte
                ServletFileUpload sfu = new ServletFileUpload(dff);//创建该对象
                sfu.setFileSizeMax(5000000);//指定单个上传文件的最大尺寸
                sfu.setSizeMax(10000000);//指定一次上传多个文件的总尺寸
                sfu.setHeaderEncoding("utf-8");//指定编码类型 ,这一行很重要，不设定会出现中文乱码
                FileItemIterator fii = sfu.getItemIterator(request);//解析request 请求,并返回FileItemIterator集合
                while(fii.hasNext()){
                    FileItemStream fis = fii.next();//从集合中获得一个文件流
                    if(!fis.isFormField() && fis.getName().length()>0){//过滤掉表单中非文件域
                        String fileName = fis.getName().substring(fis.getName().lastIndexOf("\\"));//获得上传文件的文件名
                        //这样处理的文件名有时候能避免乱码，有时候不行
//                        fileName=new String(fileName.getBytes(),"utf8");
                        System.out.println("获取到的文件名是："+fileName);
                        BufferedInputStream in = new BufferedInputStream(fis.openStream());//获得文件输入流
                        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(saveDir+fileName)));//获得文件输出流
                        Streams.copy(in, out, true);//开始把文件写到你指定的上传文件夹
                    }
                }
                response.getWriter().println("File upload successfully!!!");//终于成功了,还不到你的上传文件中看看,你要的东西都到齐了吗
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
   /**
    *  对上传文件夹和临时文件夹进行初始化
    *
    */
    public void init() throws ServletException {

        super.init();
        String tmpPath = "c:\\tmpdir";
        String savePath = "c:\\updir";
        tmpDir = new File(tmpPath);
        saveDir = new File(savePath);
        if(!tmpDir.isDirectory())
            tmpDir.mkdir();
        if(!saveDir.isDirectory())
            saveDir.mkdir();


    }
}

