<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>left.jsp</title>

	<link rel="STYLESHEET" type="text/css" href="${pageContext.request.contextPath}/admin/css/style.css">
	<style>
	td{font:normal 11px verdana,arial,helvetica,sans-serif;}
	</style>

</head>

<body>
<div>
<ul id="dhtmlgoodies_tree" class="dhtmlgoodies_tree">
	<logic:present name="sonPowers">
		<logic:iterate id="sonpower" name="sonPowers">
			<LI  class="page.gif" id="${sonpower.id}"><a href="${pageContext.request.contextPath}${sonpower.url}" target="main">${sonpower.powername}</a></LI>
	    </logic:iterate>
    </logic:present>
    <logic:notPresent name="sonPowers">	
    <li><a href="#">个人信息</a>
    	<ul>
    		<li class="page.gif" id="l17"><a href="index.php?m=91736&c=index&f=edit" target="main">修改密码</a></li>
    	</ul>
    </li>
    </logic:notPresent>
</ul>
</div>
</body>
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/block.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/popup.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/tree.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/context-menu.js"></script>
</html:html>
