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
				ϵͳ�������
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>���߷�ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">�û��б�</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">����û�</a> |
				 -->
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/toolsave" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�޸����߷�
				</th>
			</tr>
			<tr>
				<td align="right" width="30%">
					���߷����ƣ�
				</td>
				<td colspan="3">
					<html:text property="toolname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					ƴ�����룺
				</td>
				<td colspan="3">
					<html:text property="pinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					��ʼ��룺
				</td>
				<td colspan="3">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="30%">
					���߷����룺
				</td>
				<td colspan="3">
					<html:text property="code"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					���߷�����:
				</td>
				<td colspan="3">
					<html:radio property="tooltype" value="���߷�"></html:radio>���߷�
					<html:radio property="tooltype" value="�ⷿ"></html:radio>�ⷿ
				</td>
			</tr>
			<tr>
				<td align="right">
					�������:
				</td>
				<td colspan="3">
					<html:radio property="savetype" value="����"></html:radio>����&nbsp;&nbsp;&nbsp;
					<html:radio property="savetype" value="����"></html:radio>����
				</td>
			</tr>
			<tr>
				<td align="right">
					���ö���:
				</td>
				<td colspan="3">
					<html:text property="obj"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					���﷢����:
				</td>
				<td colspan="3">
					<html:text property="outmz"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					סԺ������:
				</td>
				<td colspan="3">
					<html:text property="outzy"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					������Ŀ:
				</td>
				<td colspan="3">
					<html:text property="item"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�Ƿ��������:
				</td>
				<td colspan="3">
					<html:radio property="isneg" value="0"></html:radio>������
					<html:radio property="isneg" value="1"></html:radio>����
				</td>
			</tr>
			<tr>
				<td align="right">
					״̬:
				</td>
				<td colspan="3">
					<html:radio property="state" value="0"></html:radio>������
					<html:radio property="state" value="1"></html:radio>����
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<html:hidden property="id"/>
					<input type="hidden" name="task" value="updateToolSave">
					<input type="hidden" value="454" name="modfunid">
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
