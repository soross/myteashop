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
				<b>部门选项：</b><a
					href="${pageContext.request.contextPath}/admin/dept.do?task=deptList">部门首页</a>
				|
				<a href="${pageContext.request.contextPath}/admin/dept.do?task=toAddDept">添加部门</a> |
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th colspan=5 height=25>
				部门列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="10%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
			</td>
			<td width="10%">
				序号
			</td>
			<td width="30%">
				科室部门
			</td>
			<td width="30%">
				父级科室部门
			</td>
			<td width="20%">
				操作
			</td>
		</tr>

		<logic:present name="deptList">
			<logic:empty name="deptList">
				<Tr>
					<td colspan="5" height="25">
						没有所要查询的数据...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="dept" name="deptList">
				<logic:equal value="-1" name="dept" property="pid">
					<tr align="center">
						<td height=25>
							<input type="checkbox" name="phones" value="${dept.id}"
								onclick="clickSon(this);" />
						</td>
						<td height=25>
							${dept.id}
						</td>
						<td align="left"  style="padding-left:20px;">
							<img src="${pageContext.request.contextPath}/admin/images/plus.gif">${dept.deptName}
						</td>
						<td>
							父级						
						</td>
						<!-- <td>
							bean:write name="dept"	property="regdate" format="yyyy-MM-dd HH:mm:ss"  
						</td>/-->
						<td>
							<a href="${pageContext.request.contextPath}/admin/dept.do?task=toUpdateDept&id=${dept.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/dept.do?task=deleteDept&id=${dept.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
						</td>
					</tr>
					
					<logic:iterate id="sdept" name="deptList">
						<logic:equal value="${dept.id}" name="sdept" property="pid">
							<tr align="center">
								<td height=25>
									<input type="checkbox" name="phones" value="${sdept.id}"
										onclick="clickSon(this);" />
								</td>
								<td height=25>
									${sdept.id}
								</td>
								<td align="left" style="padding-left:50px;">
									<img src="${pageContext.request.contextPath}/admin/images/minus.gif">${sdept.deptName}
								</td>
								<td>
									${dept.deptName }						
								</td>
								<!-- <td>
									bean:write name="dept"	property="regdate" format="yyyy-MM-dd HH:mm:ss"  
								</td>/-->
								<td>
									<a href="${pageContext.request.contextPath}/admin/dept.do?task=toUpdateDept&id=${sdept.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/dept.do?task=deleteDept&id=${sdept.id}"  onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
								</td>
							</tr>
						</logic:equal>
					</logic:iterate>
				</logic:equal>			
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="5" height=25>
				&nbsp;<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
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
//ejiaA1("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>
