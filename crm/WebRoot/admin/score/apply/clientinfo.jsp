<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�ͻ���Ϣҳ��</title>

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
				�ͻ���Ϣ�� 
				<hr>
			</td>
		</tr>
		<tr>
			<td class="STYLE1" width="80" align="right">
				��ǰ�ͻ�:
			</td>
			<td class="STYLE1">
				${client.phone}
			</td>
		</tr>
		<tr>
			<td class="STYLE1" width="80" align="right">
				�� �� ��:
			</td>
			<td class="STYLE1">
				${client.name}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" width="80" align="right">
				�ۼƻ���:
			</td>
			<td class="STYLE1">
				${totalScore.total}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" width="80" align="right">
				���û���:
			</td>
			<td class="STYLE1">
				${totalScore.vintegral}
			</td>
		</tr>
		<tr>
		   <td class="STYLE1" colspan="2" align="center">
				<a href="${pageContext.request.contextPath}/admin/score/apply/cart.jsp">�鿴���ﳵ</a>&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath}/admin/score.do?task=changeList">�鿴�һ���ʷ</a>
			</td>
			
		</tr>
	</table>
</body>
</html:html>
