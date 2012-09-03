package com.crm.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crm.pub.po.TPower;

public class PermissionFilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filter) throws IOException, ServletException {
		HttpServletRequest httpRequest=(HttpServletRequest)request;
		HttpServletResponse httpResponse=(HttpServletResponse)response;
		HttpSession session=httpRequest.getSession();
		
		boolean bool = false;
		String modfunid = request.getParameter("modfunid");
		if(null==modfunid||"".equalsIgnoreCase(modfunid)){
			bool = true;
		}else{
			List list = (List)session.getAttribute("powers");
			for(int i=0;i<list.size();i++){
				TPower power = (TPower)list.get(i);
				if(modfunid.equalsIgnoreCase((power.getId()).toString())){
					bool = true;
					break;
				}
			}
		}
		if(bool){
			filter.doFilter(request,response);
		}else{
			httpResponse.getWriter().write("<script>alert('您的权限不足,请联系管理员!');history.back();</script>");
		}
		
	}

	public void init(FilterConfig fc) throws ServletException {
		
	}

}
