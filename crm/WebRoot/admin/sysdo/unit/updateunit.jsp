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
				������λ
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>������λѡ�</b><a
					href="${pageContext.request.contextPath}/admin/unit.do?task=unitList">������λ��ҳ</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/unit.do?task=toAddUnit">���������λ</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/unit" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<html:hidden  property="id"  value="${unit.id}"  styleId="txt"></html:hidden>
			<tr>
				<th colspan=5 height=25>
					����������λ
				</th>
			</tr>
			<tr>
				<td align="right">
					������λ״̬��
				</td>
				<td colspan="3">
					<html:select property="unitFlag" value="${unit.unitFlag}" style="width:100px">
					<html:option value="SIGN">ǩԼ</html:option>
	  				<html:option value="GOTO">����</html:option>
	  				</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					ִ�ձ�ţ�
				</td>
				<td colspan="3">
					<html:text property="code" value="${unit.code}" size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					������λ���ƣ�
				</td>
				<td colspan="3">
					<html:text property="unitName" value="${unit.unitName}"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ϵ�ˣ�
				</td>
				<td colspan="3">
					<html:text property="linkMan" value="${unit.linkMan}" size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�绰��
				</td>
				<td colspan="3">
					<html:text property="phone" value="${unit.phone}" size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�ֻ���
				</td>
				<td colspan="3">
					<html:text property="mobile" value="${unit.mobile}" size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ע��
				</td>
				<td colspan="3">
					<html:textarea property="remark" value="${unit.remark}" style="width:300px;height:100px" styleId="txt"></html:textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" value="updateUnit">
					<input type="submit" name="submit" value=" �� ��" class="inputs" />
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
