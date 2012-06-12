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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
	<frame src="main/top.jsp" name="topFrame" scrolling="no"
		noresize="noresize" id="topFrame" />
	<frame src="main/center.jsp" name="mainFrame" id="mainFrame" />
	<frame src="main/down.jsp" name="bottomFrame" scrolling="no"
		noresize="noresize" id="bottomFrame" />
</frameset>
<noframes>
	<body>
		您的浏览器不支持框架页面！！不好意思！！
	</body>
</noframes>
</html:html>
