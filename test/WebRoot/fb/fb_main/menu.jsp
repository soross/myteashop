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
    
    <title>My JSP 'menu.jsp' starting page</title>
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
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
  </head>
  
  <body>
    <TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 
background="<%=basePath%>image/fb_main/menu_bg.jpg" border=0>            
  <TR>
    <TD vAlign=top align=middle>
    <s:iterator value="#session.menulist" id="list">
    <s:if test="#list.M_MenuParent==null">
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>image/fb_main/menu_bt.jpg><A 
            class=menuParent onclick=expand('<s:property value="#list.M_MenuId"/>') 
            href="javascript:void(0);"><s:property value="#list.M_MenuName"/></A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
         
      <TABLE id="child<s:property value="#list.M_MenuId"/>" style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
      <s:iterator value="#session.menulist" id="list1">
          <s:if test="#list.M_MenuId==#list1.M_MenuParent">        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath%>image/fb_main/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main><s:property value="#list1.M_MenuName"/></A></TD></TR>
            </s:if>
            </s:iterator>
       </TABLE>
            </s:if>
             </s:iterator>
            </TD>
    <TD width=1 bgColor=#d1e6f7></TD></TR></TABLE>
  </body>
</html>
