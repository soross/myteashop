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
				系统服务操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>器具房选项：</b>
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
	<html:form action="/admin/toolsave" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					修改器具房
				</th>
			</tr>
			<tr>
				<td align="right" width="30%">
					器具房名称：
				</td>
				<td colspan="3">
					<html:text property="toolname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					拼音简码：
				</td>
				<td colspan="3">
					<html:text property="pinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					五笔简码：
				</td>
				<td colspan="3">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					器具房编码：
				</td>
				<td colspan="3">
					<html:text property="code"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					器具房类型:
				</td>
				<td colspan="3">
					<html:radio property="tooltype" value="器具房"></html:radio>器具房
					<html:radio property="tooltype" value="库房"></html:radio>库房
				</td>
			</tr>
			<tr>
				<td align="right">
					存物类别:
				</td>
				<td colspan="3">
					<html:radio property="savetype" value="器具"></html:radio>器具&nbsp;&nbsp;&nbsp;
					<html:radio property="savetype" value="物资"></html:radio>物资
				</td>
			</tr>
			<tr>
				<td align="right">
					适用对象:
				</td>
				<td colspan="3">
					<html:text property="obj"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					门诊发器具:
				</td>
				<td colspan="3">
					<html:text property="outmz"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					住院发器具:
				</td>
				<td colspan="3">
					<html:text property="outzy"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					处方项目:
				</td>
				<td colspan="3">
					<html:text property="item"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					是否允许负库存:
				</td>
				<td colspan="3">
					<html:radio property="isneg" value="0"></html:radio>不允许
					<html:radio property="isneg" value="1"></html:radio>允许
				</td>
			</tr>
			<tr>
				<td align="right">
					状态:
				</td>
				<td colspan="3">
					<html:radio property="state" value="0"></html:radio>不可用
					<html:radio property="state" value="1"></html:radio>可用
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<html:hidden property="id"/>
					<input type="hidden" name="task" value="updateToolSave">
					<input type="hidden" value="454" name="modfunid">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 修 改 " class="inputs" />
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
