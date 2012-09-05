<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>left.jsp</title>

	

	<style>
		td{font:normal 11px verdana,arial,helvetica,sans-serif;}
	</style>
	
	
	
</head>

<body onload="var myTree = dhtmlXTreeFromHTML('listBox');">
	<link rel='STYLESHEET' type='text/css' href='common/style.css'>
	<link rel="STYLESHEET" type="text/css" href="codebase/dhtmlxtree.css">
	
	<script  src="codebase/dhtmlxcommon.js"></script>
	<script  src="codebase/dhtmlxtree.js"></script>
	<script  src="codebase/ext/dhtmlxtree_start.js"></script>
	
	<div id="listBox" setImagePath="codebase/imgs/csh_bluebooks/" style="width:150px;">
		<ul>
			<logic:present name="sonPowers">
				<logic:iterate id="sonpower" name="sonPowers">
					<LI><a href="${pageContext.request.contextPath}${sonpower.url}" target="main">${sonpower.powername}</a></LI>
			    </logic:iterate>
	   		</logic:present>
		</ul>
	</div>
 
</body>

</html:html>
