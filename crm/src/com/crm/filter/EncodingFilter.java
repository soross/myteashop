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

	// String encode = "UTF-8"; //Ĭ��
	String encode = "gbk"; // Ĭ��

	/**
	 * ����Tomcat������ISO8859-1������ַ�������Ϊԭʼ���ݣ�Ȼ��ָ����ȷ�ķ�ʽ���롣
	 * 
	 * @param request
	 *            ��Ҫ���������ServletRequest����
	 */
	public void encoding(HttpServletRequest request) // TOMCAT ��һ��BUG
	{
		Enumeration names = request.getParameterNames();

		while (names.hasMoreElements()) {

			String[] values = request.getParameterValues(names.nextElement()
					.toString()); // ��ȡ����

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

			// ����request��response����
			req.setCharacterEncoding(encode);
			((HttpServletResponse) response).setCharacterEncoding(encode);

			// Get�ύ�����
			if (req.getMethod().equalsIgnoreCase("get")) {
				encoding(req);
			}
		}

		chain.doFilter(request, response);

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		String c = filterConfig.getInitParameter("encoding");
		if (c != null) { // �����ʹ��gbk ����ͨ����xml��filter�����������һ�������޸�Ϊ��Ӧ�ı���
			encode = c;
		}
	}

}