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
				&nbsp; 门诊管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>病人选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">用户列表</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">添加用户</a> |
				 -->
				[
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/sick" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					修改病人信息
				</th>
			</tr>
			<tr>
				<td align="right" width="30%">
					病人名称：
				</td>
				<td colspan="3">
					<html:text property="sickname" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					病人编码：
				</td>
				<td colspan="3">
					<html:text property="code" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					性别：
				</td>
				<td colspan="3">
					<html:select property="garden">
						<html:option value="0">男</html:option>
						<html:option value="1">女</html:option>
					</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					年龄:
				</td>
				<td colspan="3">
					<html:text property="old" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					手机:
				</td>
				<td colspan="3">
					<html:text property="mobile" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					身份证:
				</td>
				<td colspan="3">
					<html:text property="icCardCode" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<html:hidden property="id" />
					<input type="hidden" id="staff" name="staff" class="txt"
						value="${user.userid}" />

					<input type="hidden" name="task" value="updateSick">
					<input type="hidden" value="892" name="modfunid">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 保 存 " class="inputs" />
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
