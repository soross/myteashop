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
	<html:form action="/admin/cardfee?task=cardFeeList" method="post">
		<table width="100%" border="0" align="center" cellpadding="2"
			cellspacing="1" class="tableBorder">
			<tr>
				<th height="25" colspan="3">
					�ῨԤ���ѯ
				</th>
			</tr>
			<tr>
				<td width="20%" height=25 class="pl20">
					��Ա����:
					<html:text property="custcode" size="20" styleId="txt" />
				</td>
				<td width="20%" height=25 class="pl20">
					Ԥ��ʱ��:
					<html:text property="create_Date" size="15" />
				</td>
				<td>
					<html:submit value="��ѯ"></html:submit>
				</td>
			</tr>
		</table>
	</html:form>

	<table id="listtab" width="98%" border="0" align="center"
		cellpadding="3" cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=10 height=25>
				�ῨԤ���б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="5%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
				ȫѡ
			</td>
			<td>
				���
			</td>
			<td>
				��Ա����
			</td>
			<td>
				Ԥ����
			</td>
			<td>
				Ԥ��ʱ��
			</td>
			<td>
				���
			</td>
			<td>
				�Ƿ��ӡ
			</td>
			<td>
				����Ա��
			</td>
			<td>
				��ע
			</td>
			<td>
				����
			</td>
		</tr>
		<logic:present name="cardFeeList">
			<logic:empty name="cardFeeList">
				<Tr>
					<td colspan="6" height="25">
						û����Ҫ��ѯ������...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="cardFee" name="cardFeeList">
				<tr align="center">
					<td height=25>
						<input type="checkbox" name="phones" value="${cardFee.id}"
							onclick="clickSon(this);" />
					</td>
					<td>
						${cardFee.id}
					</td>
					<td>
						${cardFee.custcode}
					</td>
					<td>
						${cardFee.money}
					</td>
					<td>
						<bean:write name="cardFee" property="createDate"
							format="yyyy-MM-dd HH:mm:ss" />
					</td>
					<td>
						${cardFee.balance}
					</td>
					<td>
						${cardFee.isprint}
					</td>
					<td>
						${cardFee.createstaff}
					</td>
					<td>
						${cardFee.remark}
					</td>
					<td>
						<a
							href="${pageContext.request.contextPath}/admin/cardfee.do?task=toUpdateCardFee&id=${cardFee.id}"><img
								src="${pageContext.request.contextPath}/admin/images/edit.gif"
								border="0">[�޸�]</a>&nbsp;&nbsp;&nbsp;
						<a
							href="${pageContext.request.contextPath}/admin/cardfee.do?task=deleteCardFee&id=${cardFee.id}"
							onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img
								src="${pageContext.request.contextPath}/admin/images/del.gif"
								border="0">[ɾ��]</a>
					</td>
				</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td align="left" colspan="3" height=25>
				&nbsp;
			</td>
			<td colspan="11" align="right">
				<page:page name="pageUtil" />
			</td>
		</tr>

	</table>
	<br>
	&nbsp;
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
