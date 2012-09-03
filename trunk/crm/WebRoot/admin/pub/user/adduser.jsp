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
				�û�����
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�û�ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/user?task=addUser" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�����û�
				</th>
			</tr>
			<tr>
				<td align="right">
					�����ʺţ�
				</td>
				<td colspan="3">
					<html:text property="userid"/><span id="uid"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					���룺
				</td>
				<td colspan="3">
					<html:password property="password"/><span id="pass"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					ȷ�����룺
				</td>
				<td colspan="3">
					<html:password property="password2"/><span id="pass2"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					������
				</td>
				<td colspan="3">
					<html:text property="username"/><span id="uname"></span>
				</td>
			</tr>
			
			<tr>
				<td align="right">
					�Ա�
				</td>
				<td colspan="3">
					<html:radio property="sex" value="0">��</html:radio>
					<html:radio property="sex" value="1">Ů</html:radio>
				</td>
			</tr>
			<tr>
				<td align="right">
					���֤��:
				</td>
				<td colspan="3">
					<html:text property="code"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					�����ʼ�:
				</td>
				<td colspan="3">
					<html:text property="email"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					�绰����:
				</td>
				<td colspan="3">
					<html:text property="tel"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					�ֻ�:
				</td>
				<td colspan="3">
					<html:text property="phone"/><span id="uphone"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					������ɫ:
				</td>
				<td colspan="3">
					<logic:present name="rolelist">
					<logic:notEmpty name="rolelist">
							<logic:iterate id="role" name="rolelist">
								<html:multibox property="trole" value="${role.roleid}"></html:multibox>${role.rolename}<br>
                            </logic:iterate>
						</logic:notEmpty>
					</logic:present><span id="urole"></span>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" value="309" name="powerID">
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
					<input type="submit" name="submit" value=" �����û� " class="inputs" />
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
