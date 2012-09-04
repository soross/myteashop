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

	<title>中间主页面</title>

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
				alert("请选择要导出的客户！！");
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
				用户管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>用户选项：</b>				
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				<!-- 
				<a href="${pageContext.request.contextPath}/admin/user.do?task=userList">用户列表</a> |
				<a href="${pageContext.request.contextPath}/admin/user.do?task=toAddUser">添加用户</a> |
				 -->
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/user?task=userList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="5">
				用户查询
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
			用户姓名:	<html:text property="username"  size="12"  />(模糊)
			</td>			
			<td height=25 class="pl20">
			登入帐号:<html:text property="userid"  size="12" />(模糊)
			</td>
			<td height=25 class="pl20">
			手机号码:	<html:text property="phone"  size="12"  />
			</td>
			<td height=25 class="pl20">
			身份证号:	<html:text property="code"  size="15"  />
			</td>
			<td>
				<html:submit value="查询"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=15 height=25>
				用户列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="3%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
			</td>
			<td width="9%">
				姓名
			</td>
			<td width="9%">
				登入帐号
			</td>
			<td width="10%">
				手机
			</td>
			<td width="8%">
				电话
			</td>
			<td width="15%">
				身份证号
			</td>
			<td width="12%">
				E-mail
			</td>					
			<td width="9%">
				创建时间
			</td>
			<td width="3%">
				状态
			</td>
			<td>
				操作
			</td>
		</tr>

		<logic:present name="userList">
			<logic:empty name="userList">
				<Tr>
					<td colspan="15" height="25">
						没有所要查询的数据...
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
							<logic:equal value="1" name="user" property="slock"><span style="color:blue;">在用</span></logic:equal>
							<logic:equal value="0" name="user" property="slock"><span style="color:red;">冻结</span></logic:equal>
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/admin/user.do?task=toUpdatePower&modfunid=310&id=${user.userid}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[配置权限]</a>
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=toUpdateUser&modfunid=311&id=${user.userid}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>
							<logic:equal value="1" name="user" property="slock">
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=slockUser&modfunid=313&id=${user.userid}&state=0" onclick="return confirm('是否确定冻结用户!');"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[冻结]</a>
							</logic:equal>
							<logic:equal value="0" name="user" property="slock">
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=slockUser&modfunid=313&id=${user.userid}&state=1" onclick="return confirm('是否确定解冻用户!');"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[解冻]</a>
							</logic:equal>
							&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/user.do?task=deleteUser&modfunid=312&id=${user.userid}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
						</td>
					</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="5" height=25>
				 &nbsp;<!--<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
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
//ejiaA1("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>
