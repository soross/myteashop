<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
   <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background="<%=basePath%>image/fb_main/title_bg1.jpg">��ǰλ��: </TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background="<%=basePath%>image/fb_main/shadow_bg.jpg"></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <TR height=100>
    <TD align=middle width=100><IMG height=100 src="<%=basePath%>image/fb_main/admin_p.gif" 
      width=90></TD>
    <TD width=60>&nbsp;</TD>
    <TD>
      <TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <TR>
          <TD>��ǰʱ�䣺2008-12-27 17:03:55</TD></TR>
        <TR>
          <TD style="FONT-WEIGHT: bold; FONT-SIZE: 16px">admin</TD></TR>
        <TR>
          <TD>��ӭ������վ�������ģ�</TD></TR></TABLE></TD></TR>
  <TR>
    <TD colSpan=3 height=10></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center border=0>
  <TR height=20>
    <TD></TD></TR>
  <TR height=22>
    <TD style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff" 
    align=middle background="<%=basePath%>image/fb_main/title_bg2.jpg">���������Ϣ</TD></TR>
  <TR bgColor=#ecf4fc height=12>
    <TD></TD></TR>
  <TR height=20>
    <TD></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=2 width="95%" align=center border=0>
  <TR>
    <TD align=right width=100>��½�ʺţ�</TD>
    <TD style="COLOR: #880000">admin</TD></TR>
  <TR>
    <TD align=right>��ʵ������</TD>
    <TD style="COLOR: #880000">admin</TD></TR>
  <TR>
    <TD align=right>ע��ʱ�䣺</TD>
    <TD style="COLOR: #880000">2007-7-25 15:02:04</TD></TR>
  <TR>
    <TD align=right>��½������</TD>
    <TD style="COLOR: #880000">58</TD></TR>
  <TR>
    <TD align=right>����ʱ�䣺</TD>
    <TD style="COLOR: #880000">2008-12-27 17:02:54</TD></TR>
  <TR>
    <TD align=right>IP��ַ��</TD>
    <TD style="COLOR: #880000">222.240.172.117</TD></TR>
  <TR>
    <TD align=right>���ݹ��ڣ�</TD>
    <TD style="COLOR: #880000">30 ����</TD></TR>
  <TR>
    <TD align=right>��վ����QQ��</TD>
    <TD style="COLOR: #880000">215288671</TD></TR>
  <TR>
    <TD align=right>���ģ������</TD>
    <TD style="COLOR: #880000"><a href="http://www.865171.cn">www.865171.cn</a></TD></TR></TABLE>
  </body>
</html>