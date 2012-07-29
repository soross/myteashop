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
		function searchLog(){
			location.href="${pageContext.request.contextPath}/admin/client.do?task=searchGradeLog";
		}
		
		
		
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
		
		function showSonData(temp){			
		  var   allNode   =   document.all;   
		  for (var   i=0;   i<allNode.length;   i++) {  
		  	if  (allNode[i].id   ==   temp)
		  	
		  		if(allNode[i].style.display=="none"){
		  			allNode[i].style.display="block";
		  		}else{
		  			allNode[i].style.display="none";
		  		}
 			}	
		}
	</script>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				������λ
			</th>
		</tr>
		<tr>
		<td>
		<html:form action="/admin/unit.do?task=unitList">
		<table width="100%" cellpadding="0" cellspacing="0">
                     <tr> 
                       <td width="15%" align="center">ִ�ձ�ţ�</td>
                       <td width="15%" ><html:text property="code"></html:text></td>
                       <td width="15%" align="center">������λ���ƣ�</td>
                       <td width="15%" ><html:text property="unitName"></html:text></td>
                       <td width="15%" align="center">��ϵ�ˣ�</td>
                       <td width="15%" ><html:text property="linkMan"></html:text></td>
                       <td width="15%" ><html:submit value="�� ѯ"></html:submit></td>
                      </tr>
                  </table>
        </html:form>
		</td>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>������λѡ�</b><a
					href="${pageContext.request.contextPath}/admin/unit.do?task=unitList">������λ��ҳ</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/unit.do?task=toAddUnit">���������λ</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th colspan=8 height=25>
				������λ�б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="10%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />ȫѡ
			</td>
			<td width="8%">
				���
			</td>
			<td width="10%">
				ִ�ձ��
			</td>
			<td width="20%">
				������λ����
			</td>
			<td width="10%">
				��ϵ��
			</td>
			<td width="13%">
				�绰
			</td>
			<td width="13%">
				�ֻ�
			</td>				
			<td width="14%">
				����
			</td>
		</tr>
		 <logic:present name="unitList">
          	<logic:iterate id="unit" name="unitList">
					<tr align="center" style="cursor: hand;">
						<td height=25>
							<input type="checkbox" name="phones" value="${data.id}"
								onclick="clickSon(this);" />
						</td>
						<td height=25>
							${unit.id}
						</td>
						<td align="left"  style="padding-left:20px;">
							${unit.code}
						</td>
						<td >
							${unit.unitName}					
						</td>
						<td>
							${unit.linkMan}			
						</td>
						<td>
							${unit.phone}			
						</td>
						<td>
							${unit.mobile}			
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/admin/unit.do?task=toUpdateUnit&id=${unit.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/unit.do?task=delUnit&id=${unit.id}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
						</td>
					</tr>					
	          </logic:iterate>
          </logic:present>
		<tr>
			<td  align="left" colspan="8" height=25>
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
