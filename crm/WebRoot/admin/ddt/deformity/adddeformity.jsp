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
	<style>
	#divSCA {
		position: absolute;
		width: 50%;
		height: 80%;
		font-size: 12px;
		background: #EEF7FD;
		border: 0px solid #000;
		z-index: 10001;
		display: none;
		text-algin: center;
		padding: 10px 0 0 10px;
	}
	</style>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				残疾状况档案
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>残疾状况档案选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/deformity" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					新增残疾状况档案
				</th>
			</tr>
			<tr>
				<td align="right">
					病人编号：
				</td>
				<td colspan="3">
					<html:text property="sickid" size="30" styleId="txt"
						onclick="loadSelectCust();"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					病人名称:
				</td>
				<td colspan="3">
					<html:text property="sickname" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					联系人:
				</td>
				<td colspan="3">
					<html:text property="linkman" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					联系电话:
				</td>
				<td colspan="3">
					<html:text property="mobile" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="createStaff" value="${user.userid}">
					<input type="hidden" name="task" value="addDeformity">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 新增残疾状况档案 " class="inputs" />
				</td>
			</tr>
		</table>
	</html:form>
	<br>
	&nbsp;
	<div id="divSCA" style="display: none;">
		<table width="100%">
			<tr>
				<td>
					编号:<input type="text" id="code" size="20" />&nbsp;会员姓名：<input type="text" id="username" size="20" />&nbsp;<input type="button" id="submitBtn" value="查询" onclick="queryCustList();"/>	
				</td>
			</tr>
			<tr>
				<td>
					<table id="custlist" width="100%">
						<tr>
							<td>选择</td>
							<td>会员编号</td>
							<td>会员名称</td>
							<td>性别</td>
							<td>身份证号</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" id="submitBtn" value="关闭"  onclick="closeDiv();"/>&nbsp;<input type="button" id="submitBtn" value="选择并关闭"  onclick="selectCust('s_custID');"/>
				</td>
			</tr>
		</table>
	</div>
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
<!-- 弹出层 -->
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.divbox.js"></script>
<script type="text/javascript">
function openDiv() { 
	$("#divSCA").OpenDiv(); 
} 
function closeDiv() {
	$("#divSCA").CloseDiv();
} 

function loadSelectCust(){
	openDiv();
}
function selectCust(vid){
	var vl = document.getElementById(vid).value;
	var strs= new Array(); //定义一数组
	strs=vl.split(","); 
	//alert(vl);
	document.getElementById("sickid").value=strs[0];
	document.getElementById("sickname").value=strs[1];
	//document.getElementById("balance").value=strs[2];
	closeDiv();
}
function queryCustList(){
	vtitle="<tr><td>选择</td><td>会员编号</td><td>会员名称</td><td>性别</td><td>身份证号</td></tr>";
	deleteTableAllTr("custlist");
	$("#custlist").append(vtitle);

	var vusername=$("#username").val();
	var vcode = $("#code").val();
	
	$.ajax({
	  url: "${pageContext.request.contextPath}/admin/cardfee.do?task=queryCustData&username="+vusername+"&code="+vcode,
	  cache: false,
	  success: function(html){
	    $("#custlist").append(html);
	  }
	}); 
}

function deleteTableAllTr(vid){
	var tb = document.getElementById(vid);
     var rowNum=tb.rows.length;
     for (i=0;i<rowNum;i++)
     {
         tb.deleteRow(i);
         rowNum=rowNum-1;
         i=i-1;
     }
}
</script>
</html:html>
