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
				<b>��������ѡ�</b>
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
	<html:form action="/admin/toolinfo" method="post">
		<table  border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=6 height=25>
					�����������
				</th>
			</tr>
			<tr>
				<td align="right" width="15%">
					�������ƣ�
				</td>
				<td colspan="1">
					<html:text property="toolname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					ƴ�����룺
				</td>
				<td colspan="1">
					<html:text property="pinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
				<td align="right" width="15%">
					��ʼ��룺
				</td>
				<td colspan="1">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="aliasname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					 ����ƴ�����룺
				</td>
				<td colspan="1">
					<html:text property="aliaspinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
				<td align="right" >
					������ʼ��룺
				</td>
				<td colspan="1">
					<html:text property="aliaswubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					���߱��룺
				</td>
				<td colspan="1">
					<html:text property="code"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					״̬:
				</td>
				<td colspan="1">
					<html:radio property="state" value="0"></html:radio>������
					<html:radio property="state" value="1"></html:radio>����
				</td>
				<td align="right">
					���ö���:
				</td>
				<td colspan="1">
					<html:text property="obj"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					���:
				</td>
				<td colspan="1">
					<html:text property="spec"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="weight"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					�����ϵ:
				</td>
				<td colspan="1">
					<html:text property="conver"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					Э����λ:
				</td>
				<td colspan="1">
					<html:text property="helpunit"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					���۵�λ:
				</td>
				<td colspan="1">
					<html:text property="saleunit"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="material"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="prodadd"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					����棺
				</td>
				<td colspan="1">
					<html:text property="savemax"  size="20"  styleId="txt" ></html:text>
				</td>
				<td align="right" >
					��С��棺
				</td>
				<td colspan="1">
					<html:text property="savemin"  size="20"  styleId="txt" ></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					�������̣�
				</td>
				<td colspan="5">
					<html:text property="prodbussion"  size="40"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					ҽ�����ͣ�
				</td>
				<td colspan="1">
					<html:text property="ybtype"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					ҽ�����룺
				</td>
				<td colspan="1">
					<html:text property="ybcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					ҽ�����ƣ�
				</td>
				<td colspan="1">
					<html:text property="ybname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					ũ�����ͣ�
				</td>
				<td colspan="1">
					<html:text property="nbtype"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					ũ�����룺
				</td>
				<td colspan="1">
					<html:text property="nbcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					ũ�����ƣ�
				</td>
				<td colspan="1">
					<html:text property="nbname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					�Ը����ʣ�
				</td>
				<td colspan="5">
					<html:text property="payself"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					����ɱ���
				</td>
				<td colspan="1">
					<html:text property="mincost"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					���۵��ۣ�
				</td>
				<td colspan="1">
					<html:text property="salecost"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					����޼ۣ�
				</td>
				<td colspan="1">
					<html:text property="maxcost"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��׼�ʺ�:
				</td>
				<td colspan="1">
					<html:text property="refcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					��ע:
				</td>
				<td colspan="3">
					<html:text property="remark"  size="30"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right" class="tdpage">
					<html:hidden property="id"/>
					<input type="hidden" name="task" value="updateToolinfo">
					<input type="hidden" value="443" name="modfunid">
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
