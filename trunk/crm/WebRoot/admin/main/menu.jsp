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

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

   <script>  
   function getCalc(){
		var WshShell = new ActiveXObject('WScript.Shell');
		WshShell.Run('calc');
   }
   function getnotepad(){
   		var WshShell = new ActiveXObject('WScript.Shell');
		WshShell.Run('notepad');
   } 
   
	</script>
	<style>
	td{font:normal 11px verdana,arial,helvetica,sans-serif;}
	</style>

</head>

<body>
	<table  width="195px" cellspacing="0" cellpadding="0">
	<tr>
		<td width="18px"><img src="${pageContext.request.contextPath}/admin/images/minus.gif" ></td>
		<td width="18px">
			<img src="${pageContext.request.contextPath}/admin/images/leaf.gif" >
		 </td>
		 <td>点点滴滴</td>
	 </tr>
	 <tr>
	 <td width="18px"><img src="${pageContext.request.contextPath}/admin/images/plus.gif" ></td>
		<td>
			<img src="${pageContext.request.contextPath}/admin/images/leaf.gif" >
		 </td>
		 <td>点点滴滴</td>
	 </tr>
	 <tr>
	 <td width="18px"><img src="${pageContext.request.contextPath}/admin/images/plus.gif" ></td>
		<td>
			<img src="${pageContext.request.contextPath}/admin/images/leaf.gif" >
		 </td>
		 <td>点点滴滴</td>
	 </tr>
 </table>
</body>
</html:html>
