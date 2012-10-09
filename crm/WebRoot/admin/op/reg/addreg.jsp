<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				挂号管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>挂号选项：</b><a
					href="${pageContext.request.contextPath}/admin/reg.do?task=regList">挂号首页</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/reg.do?task=toAddReg">门诊挂号</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/reg" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					门诊挂号
				<br></th>
			</tr>
			<tr>
				<td align="right">
					客户名称：
				<br></td>
				<td colspan="3">
					<html:text property="custName"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					挂号医生:
				<br></td>
				<td colspan="3">
					<html:text property="doctor"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					年龄:
				<br></td>
				<td colspan="3">
					<html:text property="old"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					性别:
				<br></td>
				<td colspan="3">
					<html:radio property="garden" value="男"></html:radio>男
					<html:radio property="garden" value="女"></html:radio>女
				<br></td>
			</tr>
			<tr>
				<td align="right">
					员工:
				<br></td>
				<td colspan="3"><html:text property="staff"  size="30"  styleId="txt" value="${user.userid}"></html:text>
				<br></td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addReg">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 挂 号 " class="inputs" />
				</td>
			</tr>
		</table>
	</html:form>
	<br>
	&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
</html:html>
