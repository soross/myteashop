<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>系统管理主页面</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>

<body style="MARGIN: 0px">
	<div class="top">
		<div>
			<div class="logo">泛地缘假肢医疗管理系统</div>
			<div class="topdl">
				<li>友情提醒：</li>
				<li><marquee scrollamount=3 width="200px" onMouseOver="this.stop();" onMouseOut="this.start();">操作前请注意先备份数据库,以免数据丢失!</marquee></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;欢迎${user.userid}｜<a href="#" target="main"><span class="fff">在线帮助</span></a>｜<a href="main.php" target="_blank"><span class="fff">首页</span></a>｜<a href="${pageContext.request.contextPath}/login.do?task=exit" target="_parent"><span class="fff">退出</span></a></li>
			</div>
	    </div>
		<div class="tabm">
			<ul>
				<% request.setAttribute("idx","0"); %>
				<logic:iterate id="power" name="powers">
					<logic:equal value="0" name="power" property="parentid">
						<li class="tabms" id="menu_0${idx}" onClick="getleftbar(this,0,${count},${idx});"><a href="${pageContext.request.contextPath}/login.do?task=menu&menuid=${power.id}&url=${power.url}" target="main" onClick="parent.left.location.reload();"><span>${power.powername}</span></a></li><!-- onClick="parent.left.location='login.do?task=menu&menuid=${power.id}';" -->
						<% int idx = Integer.valueOf(request.getAttribute("idx").toString())+1;  
						request.setAttribute("idx",idx); %>
					</logic:equal>				
				</logic:iterate>
			</ul>
		</div>
	</div>
	<table width="100%" height="80%" border="0" cellpadding="0" cellspacing="0" class="mindex">
	  <tr>
	    <td width="170px" height="80%" valign="top" id="frmleft" name="frmleft">
	    	<table width="170px" border="0" cellpadding="0" cellspacing="0">
	      		<tr>
	        		<td height="28" id="leftmenu_title" class="leftmenu_title"><span>快捷菜单</span></td>
	      		</tr>
	    	</table>
	    	<iframe src="main/menu.jsp" frameborder="0" id="left" name="left" scrolling="auto" align="top" class="leftiframe"></iframe>
			</td>
	    	<td width="10">
	    		<table height="100%" cellspacing="0" cellpadding="0" border="0">
			      <tbody>
			        <tr>
			          <td style="HEIGHT: 100%" onClick="switchSysBar()"><span id="switchPoint" title="关闭/打开左栏"><img src="images/lere.gif" width="10" height="20" /></span> </td>
			        </tr>
			      </tbody>
	    		</table>
	    	</td>
	    	<td valign="top">
	    		<iframe style="margin:0; padding:0; width:100%; height:480px!important;height:100%; background-color:#081250; visibility:inherit;" src="main/index.jsp" frameborder="0" scrolling=auto id="main" name="main"></iframe>
	    	</td>
	  	</tr>
	</table>
	<table width="100%" height="30" border="0" cellpadding="4" cellspacing="0" class="mindex">
	  <tr>
	    <td width="75%">&nbsp;</td>
	    <td width="25%"></td>
	  </tr>
	</table>
</body>
<script language="javascript" src="js/admin.js"></script>
</html:html>
