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
				�Һ��շѹ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�Һ��շ�ѡ�</b><a
					href="${pageContext.request.contextPath}/admin/reg.do?task=regFeeListByCharge">�Һ��շ��б�</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/reg.do?task=toAddRegFeeByCharge">�ҺŻ����շ�</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/reg" method="post" onsubmit="return confirm('�Ƿ�ȷ���Ѿ��շ�!');">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�ҺŻ����շ�
				</th>
			</tr>
			<tr>
				<td align="right">
					�Һţ�
				</td>
				<td colspan="3">
					<html:text property="orderId"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					Ա��:
				</td>
				<td colspan="3">
					<html:text property="feeStaff"  size="30"  styleId="txt" value="${user.userid}"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�۸�:
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
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
					<input type="submit" name="submit" value=" �ҺŻ����շ� " class="inputs" />
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
