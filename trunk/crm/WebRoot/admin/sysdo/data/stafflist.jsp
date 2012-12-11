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
				人事档案
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>人事档案选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/staff?task=staffList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				人事档案查询
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
			职员姓名:	<html:text property="staffname"  size="15"  />
			</td>
			<td height=25 class="pl20">
			联系电话:<html:text property="tel"  size="15" />
			</td>
			<td height=25 class="pl20">
			科室部门:<html:select property="deptid">
						<html:option value="">请选择</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
					</html:select> 
			
			</td>
			<td height=25 class="pl20">
			工作状态:<html:select property="state">
				<html:option value="">请选择</html:option>
				<html:option value="0">离职</html:option>
			  	<html:option value="1">在职</html:option>
			  </html:select>
			</td>
			<td height=25 class="pl20">
			性别:<html:select property="sex">
				<html:option value="">请选择</html:option>
				<html:option value="0">男</html:option>
			  	<html:option value="1">女</html:option>
			  	<html:option value="2">未知</html:option>
			  </html:select>
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
				人事档案列表
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
				职员姓名
			</td>
			<td>
				拼音简码
			</td>
			<td>
				五笔简码
			</td>
			<td>
				医技人员
			</td>	
			<td>
				性别
			</td>
			<td>
				医生
			</td>
			<td>
				处方权
			</td>	
			<td>
				年龄
			</td>	
			<td>
				职务
			</td>	
			<td>
				学历
			</td>	
			<td>
				专业
			</td>	
			<td>
				职称
			</td>	
			<td>
				器具师
			</td>	
			<td>
				所属科室
			</td>	
			<td>
				护士
			</td>	
			<td>
				联系电话
			</td>
			<td>
				联系地址
			</td>
			<td>
				操作员
			</td>
			<td>
				工作状态
			</td>
			<td>
				备注
			</td>
			<td width="50px">
				操作
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
						<logic:equal value="1" name="staff" property="ismt">是</logic:equal>
					</td>	
					<td>
						<logic:equal value="0" name="staff" property="sex">男</logic:equal>
						<logic:equal value="1" name="staff" property="sex">女</logic:equal>
						<logic:equal value="2" name="staff" property="sex">未知</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="isdoctor">是</logic:equal>
						<logic:equal value="0" name="staff" property="isdoctor">不是</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="ispre">是</logic:equal>
						<logic:equal value="0" name="staff" property="ispre">不是</logic:equal>
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
						<logic:equal value="1" name="staff" property="isnurse">是</logic:equal>
						<logic:equal value="0" name="staff" property="isnurse">不是</logic:equal>
					</td>	
					<td>
						${staff.tel}&nbsp;
					</td>
					<td>
						${staff.address}&nbsp;
					</td>
					<td>
						<logic:equal value="1" name="staff" property="isop">是</logic:equal>
						<logic:equal value="0" name="staff" property="isop">不是</logic:equal>
					</td>
					<td>
						<logic:equal value="1" name="staff" property="state">在职</logic:equal>
						<logic:equal value="0" name="staff" property="state">离职</logic:equal>
					</td>
					<td>
						${staff.remark}&nbsp;
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/admin/staff.do?task=toUpdateStaff&id=${staff.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a><br>
						<a href="${pageContext.request.contextPath}/admin/staff.do?task=deleteStaff&id=${staff.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
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
