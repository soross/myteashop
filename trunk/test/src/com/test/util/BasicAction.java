package com.test.util;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BasicAction extends ActionSupport {
    private final static Logger logger = Logger.getLogger(BasicAction.class);
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected ApplicationContext ctx;

	protected String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

	protected void before() {
		request = ServletActionContext.getRequest();
		response = ServletActionContext.getResponse();
		ctx = WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext());
	}


	protected void writeMapToJson(Map<String, Object> map) {
		try {
			JSONArray jsonArray = JSONArray.fromObject(map);
			String jsonstr = jsonArray.toString();
			String json = jsonstr.substring(1, jsonstr.length() - 1);
			response.setContentType("text/json; charset=GBK");
			response.getWriter().write(json);
		} catch (IOException e) {
			 e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	protected void writeError() {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("code", SysCode.SYSERROR);
			map.put("message", SysCode.SYSERRORMSG);
			JSONArray jsonArray = JSONArray.fromObject(map);
			String jsonstr = jsonArray.toString();
			String json = jsonstr.substring(1, jsonstr.length() - 1);
			response.setContentType("text/json; charset=GBK");
			response.getWriter().write(json);
		} catch (IOException e) {
			// e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	protected void writeJson(String json) {
		try {
			response.setContentType("text/json; charset=GBK");
			response.getWriter().write(json);
		} catch (IOException e) {
			// e.printStackTrace();
			logger.error(e.getMessage());
		}
	}
}
