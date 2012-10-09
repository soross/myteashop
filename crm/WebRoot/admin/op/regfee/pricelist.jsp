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
				����ҺŻ��۹���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�Һ�ѡ�</b><a
					href="${pageContext.request.contextPath}/admin/reg.do?task=regFeeListByPrice">����ҺŻ����б�</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/reg.do?task=toAddRegFeeByPrice">����ҺŻ���</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/reg?task=regFeeListByPrice" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="3">
				����ҺŻ��۲�ѯ
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			����ʱ��:	<html:text property="createTime"  size="15"  />
			</td>
			<td width="20%" height=25 class="pl20">
			�շ�ʱ��:<html:text property="feeTime"  size="15" />
			</td>
			<td>
				<html:submit value="��ѯ"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=6 height=25>
				����ҺŻ����б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="5%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />ȫѡ
			</td>
			<td width="5%">
				���
			</td>
			<td width="20%">
				����ID
			</td>
			<td width="15%">
				�۸�
			</td>
			<td width="20%">
				����ʱ��
			</td>			
			<td width="15%">
				����Ա��
			</td>
			<td>
				����
			</td>
		</tr>
		<logic:present name="regFeeList">
			<logic:empty name="regFeeList">
				<Tr>
					<td colspan="6" height="25">
						û����Ҫ��ѯ������...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="regFee" name="regFeeList">
					<tr align="center">
						<td height=25>
							<input type="checkbox" name="phones" value="${regFee.id}"
								onclick="clickSon(this);" />
						</td>
						<td>
							${regFee.id}
						</td>
						<td>
							${regFee.orderId}
						</td>
						<td>
							${regFee.fee}
						</td>
						<td>
							<bean:write name="regFee"
							property="createDate" format="yyyy-MM-dd HH:mm:ss" />
						</td>
						
						<td>
							${regFee.createStaff}
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/admin/reg.do?task=toAddRegFeeByCharge&id=${regFee.id}&orderId=${regFee.orderId }&fee=${regFee.fee}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�շ�]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/reg.do?task=toUpdateReg&id=${regFee.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/reg.do?task=deleteReg&id=${regFee.id}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
						</td>
					</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="3" height=25>
				&nbsp;<html:button property="" value="��������"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="ȫ������"
					onclick="outAllToExcel('exportAllClient')"></html:button>
			</td>
			<td colspan="10" align="right">
				<page:page name="pageUtil" />
			</td>
		</tr>
	
	</table>
	<br>&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>


<script language="javascript"><!--
function ejiaA1(o,a,b,c,d){
	var t=document.getElementById(o).getElementsByTagName("tr");
	for(var i=0;i<t.length;i++){
		t[i].style.backgroundColor=(t[i].sectionRowIndex%2==0)?a:b;
		/**
		t[i].onclick=function(){
			if(this.x!="1"){
				this.x="1";
				this.style.backgroundColor=d;
			}else{
				this.x="0";
				this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
			}
		}**/
		t[i].onmouseover=function(){
			if(this.x!="1")this.style.backgroundColor=c;
		}
		t[i].onmouseout=function(){
			if(this.x!="1")this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
		}
	}
}
//ejiaA1("����","�����б���","ż���б���","��꾭������","����󱳾�");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>
