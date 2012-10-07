package com.crm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SecurityFilter implements Filter{

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//HttpServletRequest httpRequest=(HttpServletRequest)request;
		//HttpServletResponse httpResponse=(HttpServletResponse)response;
		//HttpSession suser=httpRequest.getSession();
		
		//if(suser.getAttribute("user")==null){
		//	httpResponse.getWriter().write("<script>top.location.href='"+httpRequest.getContextPath()+"/login.jsp';</script>");
		//}
		//else{
			chain.doFilter(request,response);
		//}

		
	}

	public void init(FilterConfig arg0) throws ServletException {
		
		
	}

}
