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
	<html:form action="/admin/user?task=updateUserQuestionByLogin" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					密码答案设置
				</th>
			</tr>
			<tr>
				<td align="right">
					登入帐号：
				</td>
				<td colspan="3">
					<html:text property="userid" readonly="true"/><span id="userid"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					问题：
				</td>
				<td colspan="3">
					<html:text property="homeplace"  readonly="true"/><span id="homeplace"></span>
				</td>
			</tr>
			
			<tr>
				<td align="right">
					答案:
				</td>
				<td colspan="3">
					<html:text property="jobno"/><span id="jobno">*第一次设置请放空</span>
					
				</td>
			</tr>
			<tr>
				<td align="right">
					新问题:
				</td>
				<td colspan="3">
					<html:text property="question"/><span id="q"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					新答案:
				</td>
				<td colspan="3">
					<html:text property="answer"/><span id="a"></span>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" value="61" name="modfunid">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 设 置 " class="inputs" />
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
