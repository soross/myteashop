package com.crm.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.crm.cache.CacheUtil;
import com.crm.per.dao.Permission;
import com.crm.per.po.TLog;
import com.crm.pub.po.TUser;

public class LogFilter implements Filter {
	private Permission per;

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filter) throws IOException, ServletException {
		try {
			HttpServletRequest httpRequest = (HttpServletRequest) request;
			HttpSession session = httpRequest.getSession();

			String task = request.getParameter("task");

			if (null != task && !"".equalsIgnoreCase(task)
					&& !"login".equalsIgnoreCase(task)
					&& !"relogin".equalsIgnoreCase(task)) {
				TLog log = new TLog();
				log.setAction(task);
				log.setCreateDate(new Date());
				log.setResult("true");
				TUser user = (TUser) session.getAttribute("user");
				if (null != user) {
					log.setUserid(user.getUserid());
					log.setUsername(user.getUsername());
				} else {
					log.setUserid(request.getAttribute("userid").toString());
				}
				log.setContent("");
				per.addLog(log);

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERR:写入日志异常...");
		}
		filter.doFilter(request, response);
	}

	public void init(FilterConfig fc) throws ServletException {
		ServletContext sc = fc.getServletContext();
		WebApplicationContext wac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(sc);
		per = (Permission) wac.getBean("perDao");
	}

}
