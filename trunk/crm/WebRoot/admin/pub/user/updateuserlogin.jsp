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
				用户管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>用户选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/user?task=updateUserByLogin" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					用户信息修改
				</th>
			</tr>
			<tr>
				<td align="right">
					登入帐号：
				</td>
				<td colspan="3">
					<html:text property="userid" readonly="true"/><span id="uid"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					姓名：
				</td>
				<td colspan="3">
					<html:text property="username"  /><span id="uname"></span>
				</td>
			</tr>
			
			<tr>
				<td align="right">
					性别：
				</td>
				<td colspan="3">
					<html:radio property="sex" value="0">男</html:radio>
					<html:radio property="sex" value="1">女</html:radio>
				</td>
			</tr>
			<tr>
				<td align="right">
					身份证号:
				</td>
				<td colspan="3">
					<html:text property="code"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					电子邮件:
				</td>
				<td colspan="3">
					<html:text property="email"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					电话号码:
				</td>
				<td colspan="3">
					<html:text property="tel"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					手机:
				</td>
				<td colspan="3">
					<html:text property="phone"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" value="60" name="modfunid">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 修改登入用户 " class="inputs" />
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
