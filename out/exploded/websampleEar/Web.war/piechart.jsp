<%@ page contentType="text/html;charset=GBK"%>

<%@ page import="org.jfree.chart.*"%>
<%@ page import="org.jfree.chart.plot.*"%>
<%@ page import="org.jfree.chart.servlet.ServletUtilities"%>
<%@ page import="org.jfree.chart.labels.StandardPieToolTipGenerator"%>
<%@ page import="org.jfree.chart.urls.StandardPieURLGenerator"%>
<%@ page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@ page import="java.io.*"%>
<%@ page import="org.jfree.data.general.DefaultPieDataset" %>

<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=GBK">
<META NAME="Author" CONTENT="Alpha">
<TITLE>����Աѧ����������-By Alpha</TITLE>
</HEAD>
<BODY>
<%
            DefaultPieDataset data = new DefaultPieDataset();
            //���ݳ�ʼ��
            data.setValue("��������",380);
            data.setValue("����",1620);
            data.setValue("��ר",6100);
            data.setValue("����",8310);
            data.setValue("˶ʿ",3520);
            data.setValue("��ʿ",180);

            //HttpSession session = request.getSession();

            PiePlot3D plot = new PiePlot3D(data);//����һ��3D��ͼ
            //plot.setURLGenerator(new StandardPieURLGenerator("DegreedView.jsp"));//�趨ͼƬ����
            JFreeChart chart = new JFreeChart("",JFreeChart.DEFAULT_TITLE_FONT, plot, true);
            chart.setBackgroundPaint(java.awt.Color.white);//��ѡ������ͼƬ����ɫ
            chart.setTitle("����Աѧ����������-By Alpha");//��ѡ������ͼƬ����
            plot.setToolTipGenerator(new StandardPieToolTipGenerator());
            StandardEntityCollection sec = new StandardEntityCollection();
            ChartRenderingInfo info = new ChartRenderingInfo(sec);

            PrintWriter w = new PrintWriter(out);//���MAP��Ϣ
            //500��ͼƬ���ȣ�300��ͼƬ�߶�
            //String filename = ServletUtilities.saveChartAsPNG(chart,500,300,info,session);
            String filename = ServletUtilities.saveChartAsJPEG(chart,500,300,info,session);
            ChartUtilities.writeImageMap(w,"map0",info,false);

            String graphURL = request.getContextPath() + "/servlet/DisplayChart?filename=" + filename;
%>

<P ALIGN="CENTER">
<img src="<%= graphURL %>" width=500 height=300 border=0 usemap="#map0">
</P>
</BODY>
</HTML>