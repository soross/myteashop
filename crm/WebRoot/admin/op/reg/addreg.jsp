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
				�ҺŹ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�Һ�ѡ�</b><a
					href="${pageContext.request.contextPath}/admin/reg.do?task=regList">�Һ���ҳ</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/reg.do?task=toAddReg">����Һ�</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/reg" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					����Һ�
				<br></th>
			</tr>
			<tr>
				<td align="right">
					�ͻ����ƣ�
				<br></td>
				<td colspan="3">
					<html:text property="custName"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					�Һ�ҽ��:
				<br></td>
				<td colspan="3">
					<html:text property="doctor"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					����:
				<br></td>
				<td colspan="3">
					<html:text property="old"  size="30"  styleId="txt"></html:text>
				<br></td>
			</tr>
			<tr>
				<td align="right">
					�Ա�:
				<br></td>
				<td colspan="3">
					<html:radio property="garden" value="��"></html:radio>��
					<html:radio property="garden" value="Ů"></html:radio>Ů
				<br></td>
			</tr>
			<tr>
				<td align="right">
					Ա��:
				<br></td>
				<td colspan="3"><html:text property="staff"  size="30"  styleId="txt" value="${user.userid}"></html:text>
				<br></td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="addReg">
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
					<input type="submit" name="submit" value=" �� �� " class="inputs" />
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
