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
			<th height="25">&nbsp; 
				系统服务操作 
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>个人疾病编码选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">用户列表</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">添加用户</a> |
				 -->
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/icd" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					修改个人疾病编码
				<br></th>
			</tr>
			<tr>
				<td align="right" width="30%">
					个人疾病名称：
				<br></td>
				<td colspan="3">
					<html:text property="icdname"  size="20"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right" width="30%">
					个人疾病编码：
				<br></td>
				<td colspan="3">
					<html:text property="icdcode"  size="20"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right" width="30%">
					拼音简码：
				<br></td>
				<td colspan="3">
					<html:text property="pinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right" width="30%">
					五笔简码：
				<br></td>
				<td colspan="3">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					备注:
				<br></td>
				<td colspan="3"><html:text property="remark"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					有效状态:
				</td>
				<td colspan="3">
					<html:radio property="state" value="0"></html:radio>不可用
					<html:radio property="state" value="1"></html:radio>可用
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<html:hidden property="id"/>
					<input type="hidden" name="task" value="updateIcd">
					<input type="hidden" value="493" name="modfunid">
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
