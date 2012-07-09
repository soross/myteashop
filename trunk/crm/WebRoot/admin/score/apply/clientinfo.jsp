<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>客户信息页面</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	<!--
	a{text-decoration: none}     
         text{
           width:100px;
           height:20px;
         }
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px;color: #03515d;}
	.STYLE3 {font-size: 14px;}
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>

</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="3" class="STYLE1">
		<tr>
			<td colspan="2" align="center"> 
				客户信息栏 
				<hr>
			</td>
		</tr>
		<tr>
			<td class="STYLE1" width="80" align="right">
				当前客户:
			</td>
			<td class="STYLE1">
				${client.phone}
			</td>
		</tr>
		<tr>
			<td class="STYLE1" width="80" align="right">
				用 户 名:
			</td>
			<td class="STYLE1">
				${client.name}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" width="80" align="right">
				累计积分:
			</td>
			<td class="STYLE1">
				${totalScore.total}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" width="80" align="right">
				可用积分:
			</td>
			<td class="STYLE1">
				${totalScore.vintegral}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" colspan="2" align="center">
				<a href="${pageContext.request.contextPath}/admin/score/apply/cart.jsp">查看购物车</a>&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath}/admin/score.do?task=changeList">查看兑换历史</a>
			</td>
			
		</tr>
	</table>
</body>
</html:html>
