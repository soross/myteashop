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
				系统服务操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>往来单位选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">用户列表</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">添加用户</a> |
				 -->
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/signUnit" method="post">
		<table  border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=6 height=25>
					添加签约单位
				</th>
			</tr>
			<tr>
				<td align="right" width="15%">
					签约单位名称：
				</td>
				<td colspan="1">
					<html:text property="signunitname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					拼音简码：
				</td>
				<td colspan="1">
					<html:text property="pinyin"  size="20"  styleId="txt" ></html:text>
				</td>
				<td align="right" width="15%">
					五笔简码：
				</td>
				<td colspan="1">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="15%">
					联系人：
				</td>
				<td colspan="1">
					<html:text property="linkman"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					手机号码：
				</td>
				<td colspan="1">
					<html:text property="mobile"  size="20"  styleId="txt" ></html:text>
				</td>
				<td align="right" width="15%">
					联系电话：
				</td>
				<td colspan="1">
					<html:text property="tel"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="15%">
					传真：
				</td>
				<td colspan="1">
					<html:text property="fax"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					联系地址：
				</td>
				<td colspan="1">
					<html:text property="address"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					邮编：
				</td>
				<td colspan="1">
					<html:text property="zip"  size="20"  styleId="txt" ></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" width="15%">
					法人代表：
				</td>
				<td colspan="1">
					<html:text property="legal"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					开户银行：
				</td>
				<td colspan="1">
					<html:text property="bankname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					银行账号：
				</td>
				<td colspan="1">
					<html:text property="bankcode"  size="20"  styleId="txt" ></html:text>
				</td>
			</tr>
			<tr>
			<td align="right">
					状态:
				</td>
				<td colspan="1">
					<html:radio property="state" value="0"></html:radio>不可用
					<html:radio property="state" value="1"></html:radio>可用
				</td>
			<td align="right">
					备注:
				</td>
				<td colspan="3">
					<html:text property="remark"  size="80"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right" class="tdpage">
					<input type="hidden" name="task" value="addSignUnit">
					<input type="hidden" name="signunitFlag" value="SIGN">
					<input type="hidden" value="184" name="modfunid">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 保 存 " class="inputs" />
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
