<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�м���ҳ��</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				��Ŀ�շ�
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>��Ŀ�շ�ѡ�</b><a
					href="${pageContext.request.contextPath}/admin/feeItem.do?task=feeItemList">��Ŀ�շ���ҳ</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/feeItem.do?task=toAddFeeItem">�����Ŀ�շ�</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/feeItem" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�����շ���Ŀ
				</th>
			</tr>
			<tr>
				<td align="right">
					�շ���Ŀ���ƣ�
				</td>
				<td colspan="3">
					<html:text property="feeItemName"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�շ���Ŀ�۸�
				</td>
				<td colspan="3">
					<html:text property="feeItemPrice"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ע��
				</td>
				<td colspan="3">
					<html:textarea property="remark" style="width:300px;height:100px" styleId="txt"></html:textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addFeeItem">
					<input type="submit" name="submit" value=" ȷ �� " class="inputs" />
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
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
