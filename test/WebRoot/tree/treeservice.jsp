<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%
	String[] ids=request.getParameterValues("ids");
	for(int i=0;i<ids.length;i++){
		System.out.println(ids[i]);
	}
	
%>