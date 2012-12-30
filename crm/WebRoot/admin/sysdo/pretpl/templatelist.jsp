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
				系统服务操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>处方模版选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/preTpl?task=preTplList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				诊疗处方查询
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			模版名称:	<html:text property="templatename"  size="15"  />
			</td>
			<td>
				<html:submit value="查询"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th colspan=7 height=25>
				诊疗处方列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />全选
			</td>
			<td>
				序号
			</td>
			<td>
				所属医生
			</td>
			<td>
				名称
			</td>
			<td>
				操作
			</td>
		</tr>

		 <logic:present name="PreTplList">
          	<logic:iterate id="icd" name="PreTplList">          	 
				<tr align="center" style="cursor: hand;">
					<td height=25>
						<input type="checkbox" name="phones" value="${icd.id}"
							onclick="clickSon(this);" />
					</td>
					<td>
						${icd.id}
					</td>
					<td>
						${icd.staffid}
					</td>
					<td>
						${icd.templatename}
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/admin/preTpl.do?task=toUpdatePreTpl&id=${icd.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>
						<a href="${pageContext.request.contextPath}/admin/preTpl.do?task=deletePreTpl&id=${icd.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
					</td>
				</tr>					
	          </logic:iterate>
          </logic:present>
		<tr>
			<td  align="left" colspan="2" height=25>
				<!-- 
				&nbsp;<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
					onclick="outAllToExcel('exportAllClient')"></html:button> -->
				&nbsp;
			</td>
			<td align="center" colspan="5" height=25>
				<page:page name="pageUtil" />
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
//ejiaA1("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>