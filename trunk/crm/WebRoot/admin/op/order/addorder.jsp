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
				预约管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>预约选项：</b><a
					href="${pageContext.request.contextPath}/admin/order.do?task=orderList">预约首页</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/order.do?task=toAddOrder">新增预约</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/order" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					新增预约
				</th>
			</tr>
			<tr>
				<td align="right">
					客户名称：
				</td>
				<td colspan="3">
					<html:text property="custId"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					预约时间：
				</td>
				<td colspan="3">
					<html:text property="order"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					手机号码：
				</td>
				<td colspan="3">
					<html:text property="mobile"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					预约医生:
				</td>
				<td colspan="3">
					<html:text property="doctor"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addOrder">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 预 约 " class="inputs" />
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
