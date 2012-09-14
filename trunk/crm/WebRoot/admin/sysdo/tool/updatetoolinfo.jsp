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
				<b>器具资料选项：</b>
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
	<html:form action="/admin/toolinfo" method="post">
		<table  border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=6 height=25>
					添加器具资料
				</th>
			</tr>
			<tr>
				<td align="right" width="15%">
					器具名称：
				</td>
				<td colspan="1">
					<html:text property="toolname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" width="15%">
					拼音简码：
				</td>
				<td colspan="1">
					<html:text property="pinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
				<td align="right" width="15%">
					五笔简码：
				</td>
				<td colspan="1">
					<html:text property="wubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					别名:
				</td>
				<td colspan="1">
					<html:text property="aliasname"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					 别名拼音简码：
				</td>
				<td colspan="1">
					<html:text property="aliaspinyin"  size="20"  styleId="txt" readonly="true"></html:text>
				</td>
				<td align="right" >
					别名五笔简码：
				</td>
				<td colspan="1">
					<html:text property="aliaswubi"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					器具编码：
				</td>
				<td colspan="1">
					<html:text property="code"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					状态:
				</td>
				<td colspan="1">
					<html:radio property="state" value="0"></html:radio>不可用
					<html:radio property="state" value="1"></html:radio>可用
				</td>
				<td align="right">
					适用对象:
				</td>
				<td colspan="1">
					<html:text property="obj"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					规格:
				</td>
				<td colspan="1">
					<html:text property="spec"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					重量:
				</td>
				<td colspan="1">
					<html:text property="weight"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					换算关系:
				</td>
				<td colspan="1">
					<html:text property="conver"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					协助单位:
				</td>
				<td colspan="1">
					<html:text property="helpunit"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					零售单位:
				</td>
				<td colspan="1">
					<html:text property="saleunit"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					材料:
				</td>
				<td colspan="1">
					<html:text property="material"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					产地:
				</td>
				<td colspan="1">
					<html:text property="prodadd"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					最大库存：
				</td>
				<td colspan="1">
					<html:text property="savemax"  size="20"  styleId="txt" ></html:text>
				</td>
				<td align="right" >
					最小库存：
				</td>
				<td colspan="1">
					<html:text property="savemin"  size="20"  styleId="txt" ></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					生产厂商：
				</td>
				<td colspan="5">
					<html:text property="prodbussion"  size="40"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					医保类型：
				</td>
				<td colspan="1">
					<html:text property="ybtype"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					医保编码：
				</td>
				<td colspan="1">
					<html:text property="ybcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					医保名称：
				</td>
				<td colspan="1">
					<html:text property="ybname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					农保类型：
				</td>
				<td colspan="1">
					<html:text property="nbtype"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					农保编码：
				</td>
				<td colspan="1">
					<html:text property="nbcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					农保名称：
				</td>
				<td colspan="1">
					<html:text property="nbname"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					自付比率：
				</td>
				<td colspan="5">
					<html:text property="payself"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right" >
					最近成本：
				</td>
				<td colspan="1">
					<html:text property="mincost"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					零售单价：
				</td>
				<td colspan="1">
					<html:text property="salecost"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right" >
					最高限价：
				</td>
				<td colspan="1">
					<html:text property="maxcost"  size="20"  styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					批准问号:
				</td>
				<td colspan="1">
					<html:text property="refcode"  size="20"  styleId="txt"></html:text>
				</td>
				<td align="right">
					备注:
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
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 修 改 " class="inputs" />
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
