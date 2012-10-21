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
				���߼���֤��
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>���߼���֤��ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/illness" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					���߼���֤���޸�
				</th>
			</tr>
			<tr>
				<td align="right">
					���˱�ţ�
				</td>
				<td colspan="3">
					<html:text property="sickid" size="30" styleId="txt"
						onclick="loadSelectCust();"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					��������:
				</td>
				<td colspan="3">
					<html:text property="sickname" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					���֤��:
				</td>
				<td colspan="3">
					<html:text property="idcard" size="30" styleId="txt"></html:text>
				</td>
			</tr>
			<tr>
				<td align="right">
					�Ա�
				</td>
				<td colspan="3">
					<html:radio property="garden" value="��"></html:radio>��
					<html:radio property="garden" value="Ů"></html:radio>Ů
				</td>
			</tr>

			<tr>
				<td colspan="4" align="right" class="tdpage">
					<html:hidden property="id" />
					<input type="hidden" name="createstaff" value="${user.userid}">
					<input type="hidden" name="task" value="updateIllness">
					<input type="hidden" name="modfunid" value="803">
					<input type="reset" name="reset" value=" �� �� " class="inputs" />
					<input type="submit" name="submit" value=" ���߼���֤���޸� " class="inputs" />
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
					<input type="button" id="submitBtn" value="�ر�"  onclick="closeDiv();"/>&nbsp;<input type="button" id="submitBtn" value="ѡ�񲢹ر�"  onclick="selectCust('s_custID');"/>
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
	//alert(vl);
	document.getElementById("sickid").value=strs[0];
	document.getElementById("sickname").value=strs[1];
	//document.getElementById("balance").value=strs[2];
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
