<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/global.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.4.2.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<LINK href="<%=basePath%>css/fb_main/admin.css" type="text/css" rel="stylesheet">

  </head>
  
  <body>
   <TABLE cellSpacing=0 cellPadding=0 width="100%" 
background="<%=basePath%>image/fb_main/header_bg.jpg" border=0>
  <TR height=56>
    <TD width=260><IMG height=56 src="<%=basePath%>image/fb_main/header_left.jpg" 
    width=260></TD>
    <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px" 
      align=middle>当前用户：<s:property value="#session.loginbean.A_UserName"/>&nbsp;&nbsp; <A style="COLOR: #fff" 
      href="" 
      target=main>修改口令</A> &nbsp;&nbsp; <A style="COLOR: #fff" 
      onclick="if (confirm('确定要退出吗？')) return true; else return false;" 
      href="" target=_top>退出系统</A> 
    </TD>
    <TD align=right width=268><IMG height=56 
      src="<%=basePath%>image/fb_main/header_right.jpg" width=268></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR bgColor=#1c5db6 height=4>
    <TD></TD></TR></TABLE>
  </body>
</html>
