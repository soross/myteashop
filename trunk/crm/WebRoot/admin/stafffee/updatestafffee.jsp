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
				&nbsp; �������
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>����ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">�û��б�</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">�����û�</a> |
				 -->
				[
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/sick" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�޸Ĳ�����Ϣ
				</th>
			</tr>
			<tr>
				<td align="right" width="30%">
					�������ƣ�
				</td>
				<td colspan="3">
					<html:text property="sickname" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					���˱��룺
				</td>
				<td colspan="3">
					<html:text property="code" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					�Ա�
				</td>
				<td colspan="3">
					<html:select property="garden">
						<html:option value="0">��</html:option>
						<html:option value="1">Ů</html:option>
					</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="3">
					<html:text property="old" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�ֻ�:
				</td>
				<td colspan="3">
					<html:text property="mobile" size="20" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					����֤:
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