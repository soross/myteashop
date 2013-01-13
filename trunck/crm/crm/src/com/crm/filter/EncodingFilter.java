package com.crm.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import javax.servlet.http.HttpServletResponse;

/**
 * EncodeFilter
 */
public class EncodingFilter implements Filter {

	// String encode = "UTF-8"; //默认
	String encode = "gbk"; // 默认

	/**
	 * 将被Tomcat错误用ISO8859-1编码的字符串解码为原始数据，然后指定正确的方式编码。
	 * 
	 * @param request
	 *            需要修正编码的ServletRequest对象。
	 */
	public void encoding(HttpServletRequest request) // TOMCAT 的一个BUG
	{
		Enumeration names = request.getParameterNames();

		while (names.hasMoreElements()) {

			String[] values = request.getParameterValues(names.nextElement()
					.toString()); // 获取参数

			for (int i = 0; i < values.length; ++i) {
				try {
					values[i] = new String(values[i].getBytes("ISO8859-1"),
							encode);

				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		if (request instanceof HttpServletRequest) {
			HttpServletRequest req = (HttpServletRequest) request;

			// 设置request、response编码
			req.setCharacterEncoding(encode);
			((HttpServletResponse) response).setCharacterEncoding(encode);

			// Get提交情况下
			if (req.getMethod().equalsIgnoreCase("get")) {
				encoding(req);
			}
		}

		chain.doFilter(request, response);

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		String c = filterConfig.getInitParameter("encoding");
		if (c != null) { // 如果不使用gbk 可以通过在xml下filter的配置中添加一个参数修改为相应的编码
			encode = c;
		}
	}

}