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
				项目收费
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>项目收费选项：</b><a
					href="${pageContext.request.contextPath}/admin/feeItem.do?task=feeItemList">项目收费首页</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/feeItem.do?task=toAddFeeItem">添加项目收费</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/feeItem" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					增加收费项目
				</th>
			</tr>
			<tr>
				<td align="right">
					收费项目名称：
				</td>
				<td colspan="3">
					<html:text property="feeItemName"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					收费项目价格：
				</td>
				<td colspan="3">
					<html:text property="feeItemPrice"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					备注：
				</td>
				<td colspan="3">
					<html:textarea property="remark" style="width:300px;height:100px" styleId="txt"></html:textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addFeeItem">
					<input type="submit" name="submit" value=" 确 定 " class="inputs" />
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
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
