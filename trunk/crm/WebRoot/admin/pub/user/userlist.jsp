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
				�û�����
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�û�ѡ�</b>				
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">�û��б�</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">����û�</a> |
				 -->
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/user?task=userList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="5">
				�û���ѯ
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
			�û�����:	<html:text property="username"  size="12"  />(ģ��)
			</td>			
			<td height=25 class="pl20">
			�����ʺ�:<html:text property="userid"  size="12" />(ģ��)
			</td>
			<td height=25 class="pl20">
			�ֻ�����:	<html:text property="phone"  size="12"  />
			</td>
			<td height=25 class="pl20">
			���֤��:	<html:text property="code"  size="15"  />
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
			<th colspan=15 height=25>
				�û��б�
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="3%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
			</td>
			<td width="9%">
				����
			</td>
			<td width="9%">
				�����ʺ�
			</td>
			<td width="10%">
				�ֻ�
			</td>
			<td width="8%">
				�绰
			</td>
			<td width="15%">
				���֤��
			</td>
			<td width="12%">
				E-mail
			</td>					
			<td width="9%">
				����ʱ��
			</td>
			<td width="3%">
				״̬
			</td>
			<td>
				����
			</td>
		</tr>

		<logic:present name="userList">
			<logic:empty name="userList">
				<Tr>
					<td colspan="15" height="25">
						û����Ҫ��ѯ������...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="user" name="userList">
					<tr align="center">
						<td height=25>
							<input type="checkbox" name="phones" value="${user.userid}"
								onclick="clickSon(this);" />
						</td>
						<td>
							${user.username}
						</td>
						<td>
							${user.userid}
						</td>
						<td>
							${user.phone}
						</td>
						<td>
							${user.tel}
						</td>
						<td>
							${user.code}
						</td>
						<td >
							${user.email}
						</td>						
						<td>
							<bean:write name="user" property="opendate" format="yyyy-MM-dd"/>
						</td>
						<td>
							<logic:equal value="1" name="user" property="slock"><span style="color:blue;">����</span></logic:equal>
							<logic:equal value="0" name="user" property="slock"><span style="color:red;">����</span></logic:equal>
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/admin/user.do?task=toUpdatePower&modfunid=310&id=${user.userid}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[����Ȩ��]</a>
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=toUpdateUser&modfunid=311&id=${user.userid}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�޸�]</a>
							<logic:equal value="1" name="user" property="slock">
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=slockUser&modfunid=313&id=${user.userid}&state=0" onclick="return confirm('�Ƿ�ȷ�������û�!');"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[����]</a>
							</logic:equal>
							<logic:equal value="0" name="user" property="slock">
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=slockUser&modfunid=313&id=${user.userid}&state=1" onclick="return confirm('�Ƿ�ȷ���ⶳ�û�!');"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[�ⶳ]</a>
							</logic:equal>
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=deleteUser&modfunid=312&id=${user.userid}" onclick="return confirm('�Ƿ�ȷ��ɾ��!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[ɾ��]</a>
						</td>
					</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="5" height=25>
				 &nbsp;<!--<html:button property="" value="��������"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="ȫ������"
					onclick="outAllToExcel('exportAllClient')"></html:button> -->
					
			</td>
			<td colspan="10" align="center">
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
