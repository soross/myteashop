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
				<b>器具房库选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/toolsave?task=toolSaveList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				器具房库查询
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			器具房编码:	<html:text property="code"  size="15"  />
			</td>
			<td width="20%" height=25 class="pl20">
			器具房名称:<html:text property="toolname"  size="15" />
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
			<th colspan=23 height=25>
				器具房库列表
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
				器具房名称
			</td>
			<td>
				拼音简码
			</td>
			<td>
				五笔简码
			</td>
			<td>
				器具房编码
			</td>
			<td>
				器具房类型
			</td>
			<td>
				存物类别
			</td>
			<td>
				适用对象
			</td>
			<td>
				状态
			</td>
			<td>
				门诊发器具
			</td>	
			
			<td>
				住院发器具
			</td>	
			<td>
				处方项目
			</td>	
			<td>
				负库存
			</td>	
			<td width="100px">
				操作
			</td>
		</tr>

		 <logic:present name="toolsaveList">
          	<logic:iterate id="toolsave" name="toolsaveList">          	 
				<tr align="center" style="cursor: hand;">
					<td height=25>
						<input type="checkbox" name="phones" value="${toolsave.id}"
							onclick="clickSon(this);" />
					</td>
					<td>
						${toolsave.id}
					</td>
					<td>
						${toolsave.toolname}
					</td>
					<td>
						${toolsave.pinyin}
					</td>
					<td>
						${toolsave.wubi}
					</td>
					<td>
						${toolsave.code}
					</td>
					<td>
						${toolsave.tooltype}
					</td>	
					<td>
						${toolsave.savetype}
					</td>
					<td>
						${toolsave.obj}
					</td>
					<td>
						<logic:equal value="1" name="toolsave" property="state">可用</logic:equal>
						<logic:equal value="0" name="toolsave" property="state">不可用</logic:equal>
					</td>	
					<td>
						${toolsave.outmz}
					</td>	
					<td>
						${toolsave.outzy}
					</td>	
					<td>
						${toolsave.item}
					</td>	
					<td>
						<logic:equal value="1" name="toolsave" property="isneg">允许</logic:equal>
						<logic:equal value="0" name="toolsave" property="isneg">不允许</logic:equal>
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/admin/toolsave.do?task=toUpdateToolSave&id=${toolsave.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>
						<a href="${pageContext.request.contextPath}/admin/toolsave.do?task=deleteToolSave&id=${toolsave.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
					</td>
				</tr>					
	          </logic:iterate>
          </logic:present>
		<tr>
			<td  align="left" colspan="7" height=25>
				<!-- 
				&nbsp;<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
					onclick="outAllToExcel('exportAllClient')"></html:button> -->
				&nbsp;
			</td>
			<td align="center" colspan="16" height=25>
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