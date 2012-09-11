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
				�����ֵ�
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�����ֵ�ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/data" method="post" onsubmit="return check();">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					��ӳ����ֵ�
				</th>
			</tr>
			<tr>
				<td align="right">
					�ֵ����ƣ�
				</td>
				<td colspan="3">
					<html:text property="name" onblur="checkName();" maxlength="15" />
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="3">
					<html:select property="pid">
      					<html:option value="0">==��ѡ��==</html:option>
      					<logic:present name="pidList">
      						<logic:iterate id="data" name="pidList">
      							<html:option value="${data.id}">${data.name}</html:option>
      						</logic:iterate>
      					</logic:present>
      				</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ע:
				</td>
				<td colspan="3">
					<html:text property="remark" value="��ҵ����������ʹ��" onfocus="clearText(this)" maxlength=""/>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" name="task" id="task" value="addData">
					<input type="hidden" value="340" name="modfunid">
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
<script language="javascript">
		function clearText(temp){
			temp.value="";		
		}
		
		function checkName(){
			var name = document.getElementById("dataName").value;
			if(name.length==0){
				alert("�����������ֵ�����");
				return false;
			}else{
				return true;
			}
		}
		
		function check(){
			if(document.getElementById("temp").value=="��ҵ����������ʹ��"){
				document.getElementById("temp").value="";
			}
			return checkName();
		}
	</script>
</html:html>