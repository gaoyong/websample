package filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.FilterConfig;

public class EncodingFilter implements Filter{
	protected FilterConfig filterConfig;
	private String targetEncoding="utf-8";

	public void init(FilterConfig config)throws ServletException{
		this.filterConfig=config;
		this.targetEncoding=config.getInitParameter("encoding");
	}

	public void doFilter(ServletRequest srequest,ServletResponse sresponse
			,FilterChain chain)throws IOException,ServletException{
		System.out.println("使用一下方法对请求进行编码：encoding"+targetEncoding);

		HttpServletRequest request=(HttpServletRequest)srequest;
		request.setCharacterEncoding(targetEncoding);

		chain.doFilter(srequest,sresponse);
	}

	public void setFilter(final FilterConfig filterConfig){
		this.filterConfig=filterConfig;
	}

	public void destroy(){
		this.filterConfig=null;
	}
}
