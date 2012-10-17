<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>中间主页面</title>
	<style type="text/css">
		html {
		SCROLLBAR-FACE-COLOR: #2372b7;
		SCROLLBAR-HIGHLIGHT-COLOR: #1d61a8;
		SCROLLBAR-SHADOW-COLOR: #1d61a8;
		SCROLLBAR-3DLIGHT-COLOR: #1d61a8;
		SCROLLBAR-ARROW-COLOR: #ffffff;
		SCROLLBAR-TRACK-COLOR: #1d61a8;
		SCROLLBAR-DARKSHADOW-COLOR: #1d61a8;}
	</style>
	<link rel='STYLESHEET' type='text/css'
		href='${pageContext.request.contextPath}/admin/js/dhtmlxTree/common/style.css'>
	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/js/dhtmlxTree/codebase/dhtmlxtree.css">

</head>
<body onload="var myTree = dhtmlXTreeFromHTML('listBox');">
	<div id="listBox"
		setImagePath="${pageContext.request.contextPath}/admin/js/dhtmlxTree/codebase/imgs/csh_bluebooks/"
		style=" height:98%;width:180px;background-color: #f5f5f5; border: 1px solid Silver;">
		<ul>
			<li>
				病人
				<ul>
				   <logic:iterate id="sick" name="sickList">
					<li>
						${sick.custName}
						<ul>
							<li>
								病例
							</li>
							<li>
								档案
							</li>
						</ul>
					</li>
					</logic:iterate>
				</ul>
			</li>
		</ul>
	</div>
</body>


<script
	src="${pageContext.request.contextPath}/admin/js/dhtmlxTree/codebase/dhtmlxcommon.js"></script>
<script
	src="${pageContext.request.contextPath}/admin/js/dhtmlxTree/codebase/dhtmlxtree.js"></script>
<script
	src="${pageContext.request.contextPath}/admin/js/dhtmlxTree/codebase/ext/dhtmlxtree_start.js"></script>
</html:html>
