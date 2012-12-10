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
				���µ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>���µ���ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/staff?task=staffList" method="post">
		<table width="100%" border="0" align="center" cellpadding="2"
			cellspacing="1" class="tableBorder">
			<tr>
				<th height="25" colspan="6">
					���µ���
				</th>
			</tr>
			<tr>
				<td width="17%" height=25 class="pl20">
					����:
					<html:text property="staffname" size="15" styleId="txt" />
				</td>
				<td width="17%" height=25 class="pl20">
					״̬:
					<html:select property="state">
      					<html:option value="">��ѡ��</html:option>
      					<html:option value="1">��ְ</html:option>
      					<html:option value="0">��ְ</html:option>
      				</html:select>
				</td>
				<td width="17%" height=25 class="pl20">
					�绰:<html:text property="tel" size="15" styleId="txt" />
				</td>
				<td width="17%" height=25 class="pl20">
					�Ա�:
					<html:select property="sex">
						<html:option value="">��ѡ��</html:option>
						<html:option value="2">δ֪</html:option>
      					<html:option value="0">��</html:option>
      					<html:option value="1">Ů</html:option>
      				</html:select>
				</td>
				<td width="17%" height=25 class="pl20">
					����:
					<html:select property="deptid">
						<html:option value="">==��ѡ��==</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
      				</html:select>
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
			<th colspan=20 height=25>
				���µ����б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="6%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
				ȫѡ
			</td>
			<td>
				���
			</td>
			<td>
				ְԱ����
			</td>
			<td>
				����
			</td>
			<td>
				״̬
			</td>
			<td>
				����״��
			</td>
			<td>
				�Ա�
			</td>
			<td>
				������ò
			</td>
			<td>
				��������
			</td>
			<td>
				ƴ������
			</td>
			<td>
				��ʼ���
			</td>
			<td>
				��ϵ��ʽ
			</td>
			<td>
				���֤��
			</td>
			<td>
				��ɫ
			</td>
			<td>
				ְ��
			</td>
			<td>
				����
			</td>
		</tr>
		<logic:present name="staffList">
			<logic:empty name="staffList">
				<Tr>
					<td colspan="20" height="25">
						û����Ҫ��ѯ������...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="staff" name="staffList">
				<tr align="center">
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
						${staff.age }
					</td>
					<td>
						<logic:equal value="0" name="staff" property="state">��ְ</logic:equal>
						<logic:equal value="1" name="staff" property="state">��ְ</logic:equal>
					</td>
					<td>
						<logic:equal value="0" name="staff" property="ismarry">δ��</logic:equal>
						<logic:equal value="1" name="staff" property="ismarry">�ѻ�</logic:equal>
						<logic:equal value="2" name="staff" property="ismarry">δ֪</logic:equal>
					</td>
					<td>
						<logic:equal value="0" name="staff" property="sex">��</logic:equal>
						<logic:equal value="1" name="staff" property="sex">Ů</logic:equal>
						<logic:equal value="2" name="staff" property="sex">δ֪</logic:equal>
					</td>
					<td>
						${staff.polstate}
					</td>
					<td>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
								<logic:equal value="${staff.deptid}" name="dept" property="id">
	      						${dept.deptName}
	      						</logic:equal>
	      					</logic:iterate>
      					</logic:present>
					</td>
					<td>
						${staff.pinyin}
					</td>
					<td>
						${staff.wubi}
					</td>
					<td>
						${staff.tel}<br>
						${staff.mobile}
					</td>
					<td>
						${staff.idcode}
					</td>
					<td>
						<logic:equal value="1" name="staff" property="isdoctor">ҽ��</logic:equal>
						<logic:equal value="1" name="staff" property="isnurse">��ʿ</logic:equal>
						<logic:equal value="1" name="staff" property="ismt">ҽ��</logic:equal><br>
						<logic:equal value="1" name="staff" property="isop">����Ա</logic:equal>
						<logic:equal value="1" name="staff" property="ispre">����Ȩ</logic:equal>
						<logic:equal value="1" name="staff" property="isapp">����Ա</logic:equal>
					</td>
					<td>
						${staff.job}
					</td>
					<td>
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=toShowStaffInfo&id=${staff.id}"><img
								src="${pageContext.request.contextPath}/admin/images/edit.gif"
								border="0">[��ϸ]</a>&nbsp;
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=toUpdateStaff&id=${staff.id}"><img
								src="${pageContext.request.contextPath}/admin/images/edit.gif"
								border="0">[�޸�]</a>&nbsp;
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=deleteStaff&id=${staff.id}"
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
			<td colspan="17" align="right">
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
