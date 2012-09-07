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
				���µ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>���µ���ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/staff?task=staffList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				���µ�����ѯ
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
			ְԱ����:	<html:text property="staffname"  size="15"  />
			</td>
			<td height=25 class="pl20">
			��ϵ�绰:<html:text property="tel"  size="15" />
			</td>
			<td height=25 class="pl20">
			���Ҳ���:<html:select property="deptid">
						<html:option value="">��ѡ��</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
					</html:select> 
			
			</td>
			<td height=25 class="pl20">
			����״̬:<html:select property="state">
				<html:option value="">��ѡ��</html:option>
				<html:option value="0">��ְ</html:option>
			  	<html:option value="1">��ְ</html:option>
			  </html:select>
			</td>
			<td height=25 class="pl20">
			�Ա�:<html:select property="sex">
				<html:option value="">��ѡ��</html:option>
				<html:option value="0">��</html:option>
			  	<html:option value="1">Ů</html:option>
			  	<html:option value="2">δ֪</html:option>
			  </html:select>
			</td>
			<td>
				<html:submit value="��ѯ"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th colspan=23 height=25>
				���µ����б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />ȫѡ
			</td>
			<td>
				���
			</td>
			<td>
				ְԱ����
			</td>
			<td>
				ƴ������
			</td>
			<td>
				��ʼ���
			</td>
			<td>
				ҽ����Ա
			</td>	
			<td>
				�Ա�
			</td>
			<td>
				ҽ��
			</td>
			<td>
				����Ȩ
			</td>	
			<td>
				����
			</td>	
			<td>
				ְ��
			</td>	
			<td>
				ѧ��
			</td>	
			<td>
				רҵ
			</td>	
			<td>
				ְ��
			</td>	
			<td>
				����ʦ
			</td>	
			<td>
				��������
			</td>	
			<td>
				��ʿ
			</td>	
			<td>
				��ϵ�绰
			</td>
			<td>
				��ϵ��ַ
			</td>
			<td>
				����Ա
			</td>
			<td>
				����״̬
			</td>
			<td>
				��ע
			</td>
			<td width="50px">
				����
			</td>
		</tr>

		 <logic:present name="staffList">
          	<logic:iterate id="staff" name="staffList">          	 
				<tr align="center" style="cursor: hand;">
					<td height=25>
						<input type="checkbox" name="phones" value="${staff.id}"
							onclick="clickSon(this);" />
					</td>
					<td>
						${staff.id}
					</td>
					<td>
						${staff.staffname}
					</td>
					<td>
						${staff.pinyin}
					</td>
					<td>
						${staff.wubi}
					</td>
					<td>
						<logic:equal value="1" name="staff" property="ismt">��</logic:equal>
					</td>	
					<td>
						<logic:equal value="0" name="staff" property="sex">��</logic:equal>
						<logic:equal value="1" name="staff" property="sex">Ů</logic:equal>
						<logic:equal value="2" name="staff" property="sex">δ֪</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="isdoctor">��</logic:equal>
						<logic:equal value="0" name="staff" property="isdoctor">����</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="ispre">��</logic:equal>
						<logic:equal value="0" name="staff" property="ispre">����</logic:equal>
					</td>	
					<td>
						${staff.age}
					</td>	
					<td>
						${staff.job}
					</td>	
					<td>
						${staff.collage}
					</td>	
					<td>
						${staff.major}
					</td>	
					<td>
						${staff.jobtitle}
					</td>	
					<td>
						${staff.isapp}
					</td>	
					<td>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<logic:equal value="${staff.deptid}" name="dept" property="id">${dept.deptName}</logic:equal>
	      					</logic:iterate>
      					</logic:present>
					</td>	
					<td>
						<logic:equal value="1" name="staff" property="isnurse">��</logic:equal>
						<logic:equal value="0" name="staff" property="isnurse">����</logic:equal>
					</td>	
					<td>
						${staff.tel}&nbsp;
					</td>
					<td>
						${staff.address}&nbsp;
					</td>
					<td>
						<logic:equal value="1" name="staff" property="isop">��</logic:equal>
						<logic:equal value="0" name="staff" property="isop">����</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="state">��ְ</logic:equal>
						<logic:equal value="0" name="staff" property="state">��ְ</logic:equal>
					</td>
					<td>
						${staff.remark}&nbsp;
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/admin/staff.do?task=toUpdateStaff&id=${staff.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a><br>
						<a href="${pageContext.request.contextPath}/admin/staff.do?task=deleteStaff&id=${staff.id}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
					</td>
				</tr>					
	          </logic:iterate>
          </logic:present>
		<tr>
			<td  align="left" colspan="7" height=25>
				<!-- 
				&nbsp;<html:button property="" value="��������"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="ȫ������"
					onclick="outAllToExcel('exportAllClient')"></html:button> -->
				&nbsp;
			</td>
			<td align="center" colspan="16" height=25>
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
