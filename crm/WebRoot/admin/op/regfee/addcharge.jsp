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
				挂号收费管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>挂号收费选项：</b><a
					href="${pageContext.request.contextPath}/admin/reg.do?task=regFeeListByCharge">挂号收费列表</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/reg.do?task=toAddRegFeeByCharge">挂号划价收费</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/reg" method="post" onsubmit="return confirm('是否确定已经收费!');">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					挂号划价收费
				</th>
			</tr>
			<tr>
				<td align="right">
					挂号：
				</td>
				<td colspan="3">
					<html:text property="orderId"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					员工:
				</td>
				<td colspan="3">
					<html:text property="feeStaff"  size="30"  styleId="txt" value="${user.userid}"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					价格:
				</td>
				<td colspan="3">
					<html:text property="fee"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addRegFeeByCharge">
					<input type="hidden" name="feeType" value="CHARGE">
					<html:hidden property="id" />
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 挂号划价收费 " class="inputs" />
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
