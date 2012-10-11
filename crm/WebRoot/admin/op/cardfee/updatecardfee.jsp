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
				�ῨԤ�����
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�ῨԤ��ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/cardfee" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					�ῨԤ���޸�
				</th>
			</tr>
			<tr>
				<td align="right">
					��Ա���ţ�
				</td>
				<td colspan="3">
					<html:hidden property="balance"/>
					<html:hidden property="id"/>
					<html:text property="custcode" size="30" styleId="txt"
						readonly="true"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					Ԥ����:
				</td>
				<td colspan="3">
					<html:text property="money" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ע:
				</td>
				<td colspan="3">
					<html:text property="remark" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					&nbsp;
				</td>
				<td colspan="3">
					<html:checkbox property="isprint" value="1"></html:checkbox>
					������ӡ
				</td>
			</tr>

			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="createstaff" value="${user.userid}">
					<input type="hidden" name="task" value="updateCardFee">
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
					<input type="submit" name="submit" value=" �ῨԤ���޸� " class="inputs" />
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
					���:<input type="text" id="code" size="20" />&nbsp;��Ա������<input type="text" id="username" size="20" />&nbsp;<input type="button" id="submitBtn" value="��ѯ" onclick="queryCustList();"/>	
				</td>
			</tr>
			<tr>
				<td>
					<table id="custlist" width="100%">
						<tr>
							<td>ѡ��</td>
							<td>��Ա���</td>
							<td>��Ա����</td>
							<td>�Ա�</td>
							<td>���֤��</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" id="submitBtn" value="ѡ�񲢹ر�"  onclick="selectCust('s_custID');"/>
				</td>
			</tr>
		</table>
	</div>
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
<!-- ������ -->
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
	var strs= new Array(); //����һ����
	strs=vl.split(","); 
	alert(vl);
	document.getElementById("custid").value=strs[0];
	document.getElementById("custcode").value=strs[1];
	document.getElementById("balance").value=strs[2];
	closeDiv();
}
function queryCustList(){
	vtitle="<tr><td>ѡ��</td><td>��Ա���</td><td>��Ա����</td><td>�Ա�</td><td>���֤��</td></tr>";
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
