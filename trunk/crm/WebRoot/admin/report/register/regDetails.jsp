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

	<title>门诊明细</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
	<script language="javascript" type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
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
				患着门诊明细清单
			</th>
		</tr>
		
	</table>
	<html:form action="/admin/registerReport?task=regDetails" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				明细日期查询
			</th>
		</tr>
		<tr>
			<td width="30%" height=25 class="pl20">
			开始时间:	<html:text property="beginDate"  size="20" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" styleId="beginTime"  styleClass="Wdate" readonly="true" />
			</td>
			<td width="30%" height=25 class="pl20">
			结束时间:<html:text property="endDate"  size="20" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});"  styleId="endTime"  styleClass="Wdate" readonly="true" />
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
				汇总列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
		<!-- 
			<td height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />全选
			</td>
		 -->
			<td>
				序号
			</td>
			<td>
				病人名称
			</td>
			<td>
				挂号金额
			</td>
			<td>
				性别
			</td>
			<td>
				年龄
			</td>
			<td>
				挂号员工
			</td>
			<td>
				挂号时间
			</td>
			<td>
				收款时间
			</td>
			<td>
				收款人
			</td>
		</tr>

		 <logic:present name="regList">
          	<logic:iterate id="list" name="regList">          	 
				<tr align="center" style="cursor: hand;">
					<td>
						${list[0]}
					</td>
					<td>
						${list[1]}
					</td>
					<td>
						${list[7]}
					</td>
					<td>
						${list[6]}
					</td>
					<td>
						${list[5]}
					</td>
					<td>
						${list[4]}
					</td>
					<td>
						${list[3]}
					</td>
					<td>
						${list[9]}
					</td>
					<td>
						${list[10]}
					</td>
				</tr>					
	          </logic:iterate>
          </logic:present>
          <!--  
		<tr>
			<td  align="left" colspan="7" height=25>
				 
				&nbsp;<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
					onclick="outAllToExcel('exportAllClient')"></html:button> 
				&nbsp;
			</td>
		</tr>
		-->
		<tr>
			<td align="center" colspan="9" height=25>
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