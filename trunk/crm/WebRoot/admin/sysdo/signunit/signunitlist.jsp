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
				ϵͳ�������
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>ǩԼ��λѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/signUnit.do?task=signUnitList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				������λ���ϲ�ѯ
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			ǩԼ��λ����:<html:text property="signunitname"  size="15" />
			</td>
			<td>
				<html:submit value="��ѯ"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	<table width="98%" border="0" align="center">
		<tr>
			<td>
				<div style="width:1200px; overflow-x:scroll;overflow: auto;">
					<table id="listtab" width="1700px" border="0" align="center" cellpadding="3"
						cellspacing="1" class="tableBorderList">
						<tr>
							<th colspan=17 height=25>
								ǩԼ��λ�б�
							</th>
						</tr>
						<tr align="center" class="thstyle">
							<td height=10 >
								<input type="checkbox" id="ckb" name="ckb"
									onclick="selectAll(this);" />ȫѡ
							</td>
							<td >
								���
							</td>
							<td >
								��λ����
							</td>
							<td >
								ƴ��
							</td>
							<td >
								���
							</td>
							<td >
								��ϵ��
							</td>
							<td >
								�ֻ�����
							</td>
							<td >
								��ϵ�绰
							</td>
							<td >
								����
							</td>	
							<td >
								��ϵ��ַ
							</td>
							<td >
								�ʱ�
							</td>
							<td >
								���˴���
							</td>	
							<td >
								��������
							</td>	
							<td >
								�����˺�
							</td>
								
							<td >
								��ע
							</td>
							<td >
								�Ƿ����
							</td>
							<td width="100px">
								����
							</td>
						</tr>
				
						 <logic:present name="signunitList">
				          	<logic:iterate id="signunit" name="signunitList">          	 
								<tr align="center" style="cursor: hand;">
									<td height=25>
										<input type="checkbox" name="phones" value="${signunit.id}"
											onclick="clickSon(this);" />
									</td>
									<td>
										${signunit.id}
									</td>
									<td>
										${signunit.signunitname}
									</td>
									<td>
										${signunit.pinyin}
									</td>
									<td>
										${signunit.wubi}
									</td>
									<td>
										${signunit.linkman}
									</td>
									<td>
										${signunit.mobile}
									</td>
									<td>
										${signunit.tel}
									</td>
									<td>
										${signunit.fax}
									</td>
									<td>
										${signunit.address}
									</td>
									<td>
										${signunit.zip}
									</td>
									<td>
										${signunit.legal}
									</td>
									<td>
										${signunit.bankname}
									</td>
									<td>
										${signunit.bankcode}
									</td>
									<td>
										${signunit.remark}
									</td>	
									<td>
										<logic:equal value="1" name="signunit" property="state">����</logic:equal>
										<logic:equal value="0" name="signunit" property="state">������</logic:equal>
									</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/signUnit.do?task=toUpdateSignUnit&id=${signunit.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a>
										<a href="${pageContext.request.contextPath}/admin/signUnit.do?task=delSignUnit&id=${signunit.id}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
									</td>
								</tr>					
					          </logic:iterate>
				          </logic:present>
						<tr>
							<td  align="left" colspan="1" height=25>
								<!-- 
								&nbsp;<html:button property="" value="��������"
									onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
								<html:button property="" value="ȫ������"
									onclick="outAllToExcel('exportAllClient')"></html:button> -->
								&nbsp;
							</td>
							<td align="left" colspan="17" height=25>
								<page:page name="pageUtil" />
							</td>
						</tr>
					
					</table>
					</div>
			</td>
		</tr>
	</table>
	
	<br>&nbsp;
</body><script language="javascript" src="js/block.js"></script>
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