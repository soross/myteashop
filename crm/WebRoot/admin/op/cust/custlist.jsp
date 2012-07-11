<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�м���ҳ��</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
	<script>	
	
		function selectAll(obj){
			var chks = document.getElementsByName("phones");
		//	alert(chks.length);
			for(var i=0;i<chks.length;i++){
				chks[i].checked = obj.checked;
			}
		}
		function clickSon(obj){
			if(obj.checked==true){
				document.getElementById("ckb").checked=true;
			}else{
				var chks = document.getElementsByName("phones");
				for(var i=0;i<chks.length;i++){
					if(chks[i].checked == true){
						document.getElementById("ckb").checked=true;
						break;
					}else{
						document.getElementById("ckb").checked=false;
					}
				}
			}
		}
		
		function outToExcel(tmp){
			var chks = document.getElementsByName("phones");
			for(var i = 0; i < chks.length; i++ ){
				if(chks[i].checked==true){
					tag = true;	
					break;
				}
			}			
			if(tag){
				document.getElementById("task").value=tmp;		
				clientForm.submit();
			}else{
				alert("��ѡ��Ҫ�����Ŀͻ�����");
			}
		}
		function outAllToExcel(temp){			
			document.getElementById("task").value=temp;				
			clientForm.submit();		
		}
	</script>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				��Ա����
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>��Աѡ�</b><a
					href="${pageContext.request.contextPath}/admin/cust.do?task=custList">��Ա��ҳ</a>
				|
				<a href="${pageContext.request.contextPath}/admin/cust.do?task=toAddCust">��ӻ�Ա</a> |
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<table width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=15 height=25>
				��Ա�б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="3%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
			</td>
			<td width="8%">
				����
			</td>
			<td width="6%">
				����
			</td>
			<td width="3%">
				�Ա�
			</td>
			<td width="3%">
				����
			</td>
			<td width="5%">
				ѧ��
			</td>
			<td width="6%">
				ְҵ
			</td>
			<td width="8%">
				���֤��
			</td>
			<td width="8%">
				�ֻ�����
			</td>
			<td width="15%">
				��ס��ַ
			</td>
			<td width="8%">
				IC����
			</td>
			<td width="5%">
				��Ա����
			</td>
			<td width="8%">
				���պ���
			</td>
			<td width="5%">
				״̬
			</td>
			<td>
				����
			</td>
		</tr>

		<logic:present name="custList">
			<logic:empty name="custList">
				<Tr>
					<td colspan="15" height="25">
						û����Ҫ��ѯ������...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="cust" name="custList">
					<tr align="center">
						<td height=25>
							<input type="checkbox" name="phones" value="${cust.id}"
								onclick="clickSon(this);" />
						</td>
						<td>
							${cust.code}
						</td>
						<td>
							${cust.username}
						</td>
						<td>
							${cust.garden}
						</td>
						<td>
							${cust.old}
						</td>
						<td>
							${cust.college}
						</td>
						<td>
							${cust.work}
						</td>
						<td >
							${cust.idCode}
						</td>
						<td >
							${cust.mobile}
						</td>
						<td align="left">
							${cust.liveAdd}
						</td>
						<td>
							${cust.icCardCode}
						</td>
						<td>
							${cust.vipType}
						</td>						
						<td>
							${cust.safeCode}
						</td>
						<td >
							${cust.state}
						</td>						
						<td>
							<a href="${pageContext.request.contextPath}/admin/cust.do?task=toUpdateCust&id=${cust.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/cust.do?task=deleteCust&id=${cust.id}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
						</td>
					</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="15" height=25>
				&nbsp;<html:button property="" value="��������"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="ȫ������"
					onclick="outAllToExcel('exportAllClient')"></html:button>
			</td>
		</tr>
	
	</table>
	<br>&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
</html:html>
