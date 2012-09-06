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
				系统服务操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>部门选项：</b>
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
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th colspan=15 height=25>
				部门列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="5%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />全选
			</td>
			<td width="5%">
				编码
			</td>
			<td width="8%">
				名称
			</td>
			<td width="8%">
				拼音简码
			</td>
			<td width="8%">
				五笔简码
			</td>
			<td width="6%">
				允许挂号
			</td>
			<td width="6%">
				门诊科室
			</td>
			<td width="6%">
				住院科室
			</td>
			<td width="6%">
				行政科室
			</td>
			<td width="6%">
				后勤科室
			</td>
			<td width="6%">
				其他科室
			</td>
			<td width="6%">
				挂号金额
			</td>
			<td width="6%">
				有效状态
			</td>
			<td width="8%">
				备注
			</td>
			<td width="10%">
				操作
			</td>
		</tr>

		<logic:present name="deptList">
			<logic:empty name="deptList">
				<Tr>
					<td colspan="15" height="25">
						没有所要查询的数据...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="dept" name="deptList">
				<tr align="center">
					<td height=25>
						<input type="checkbox" name="phones" value="${dept.id}"
							onclick="clickSon(this);" />
					</td>
					<td width="5%">
						${dept.id}
					</td>
					<td width="8%">
						${dept.deptName}
					</td>
					<td width="8%">
						${dept.pinyin}
					</td>
					<td width="8%">
						${dept.wubi}
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="isreg">不是</logic:equal>
						<logic:equal value="1" name="dept" property="isreg">是</logic:equal>
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="ismz">不是</logic:equal>
						<logic:equal value="1" name="dept" property="ismz">是</logic:equal>
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="iszy">不是</logic:equal>
						<logic:equal value="1" name="dept" property="iszy">是</logic:equal>
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="isxz">不是</logic:equal>
						<logic:equal value="1" name="dept" property="isxz">是</logic:equal>
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="ishq">不是</logic:equal>
						<logic:equal value="1" name="dept" property="ishq">是</logic:equal>
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="isother">不是</logic:equal>
						<logic:equal value="1" name="dept" property="isother">是</logic:equal>
					</td>
					<td width="6%">
						${dept.regfee}
					</td>
					<td width="6%">
						<logic:equal value="0" name="dept" property="state">不可用</logic:equal>
						<logic:equal value="1" name="dept" property="state">可用</logic:equal>
					</td>
					<td width="8%">
						${dept.remark}&nbsp;
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/admin/dept.do?task=toUpdateDept&id=${dept.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/dept.do?task=deleteDept&id=${dept.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
					</td>
				</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="15" height=25>
				&nbsp;<!-- <html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
					onclick="outAllToExcel('exportAllClient')"></html:button> -->
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
