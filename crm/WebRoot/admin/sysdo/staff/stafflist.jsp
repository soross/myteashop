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
				人事档案
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>人事档案选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
					<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/staff?task=staffList" method="post">
		<table width="100%" border="0" align="center" cellpadding="2"
			cellspacing="1" class="tableBorder">
			<tr>
				<th height="25" colspan="6">
					人事档案
				</th>
			</tr>
			<tr>
				<td width="17%" height=25 class="pl20">
					名称:
					<html:text property="staffname" size="15" styleId="txt" />
				</td>
				<td width="17%" height=25 class="pl20">
					状态:
					<html:select property="state">
      					<html:option value="">请选择</html:option>
      					<html:option value="1">在职</html:option>
      					<html:option value="0">离职</html:option>
      				</html:select>
				</td>
				<td width="17%" height=25 class="pl20">
					电话:<html:text property="tel" size="15" styleId="txt" />
				</td>
				<td width="17%" height=25 class="pl20">
					性别:
					<html:select property="sex">
						<html:option value="">请选择</html:option>
						<html:option value="2">未知</html:option>
      					<html:option value="0">男</html:option>
      					<html:option value="1">女</html:option>
      				</html:select>
				</td>
				<td width="17%" height=25 class="pl20">
					部门:
					<html:select property="deptid">
						<html:option value="">==请选择==</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
      				</html:select>
				</td>
				<td>
					<html:submit value="查询"></html:submit>
				</td>
			</tr>
		</table>
	</html:form>

	<table id="listtab" width="98%" border="0" align="center"
		cellpadding="3" cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=20 height=25>
				人事档案列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="6%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
				全选
			</td>
			<td>
				序号
			</td>
			<td>
				职员姓名
			</td>
			<td>
				年龄
			</td>
			<td>
				状态
			</td>
			<td>
				婚姻状况
			</td>
			<td>
				性别
			</td>
			<td>
				政治面貌
			</td>
			<td>
				所属科室
			</td>
			<td>
				拼音简码
			</td>
			<td>
				五笔简码
			</td>
			<td>
				联系方式
			</td>
			<td>
				身份证号
			</td>
			<td>
				角色
			</td>
			<td>
				职务
			</td>
			<td>
				操作
			</td>
		</tr>
		<logic:present name="staffList">
			<logic:empty name="staffList">
				<Tr>
					<td colspan="20" height="25">
						没有所要查询的数据...
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
						<logic:equal value="0" name="staff" property="state">离职</logic:equal>
						<logic:equal value="1" name="staff" property="state">在职</logic:equal>
					</td>
					<td>
						<logic:equal value="0" name="staff" property="ismarry">未婚</logic:equal>
						<logic:equal value="1" name="staff" property="ismarry">已婚</logic:equal>
						<logic:equal value="2" name="staff" property="ismarry">未知</logic:equal>
					</td>
					<td>
						<logic:equal value="0" name="staff" property="sex">男</logic:equal>
						<logic:equal value="1" name="staff" property="sex">女</logic:equal>
						<logic:equal value="2" name="staff" property="sex">未知</logic:equal>
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
						<logic:equal value="1" name="staff" property="isdoctor">医生</logic:equal>
						<logic:equal value="1" name="staff" property="isnurse">护士</logic:equal>
						<logic:equal value="1" name="staff" property="ismt">医技</logic:equal><br>
						<logic:equal value="1" name="staff" property="isop">操作员</logic:equal>
						<logic:equal value="1" name="staff" property="ispre">处方权</logic:equal>
						<logic:equal value="1" name="staff" property="isapp">器具员</logic:equal>
					</td>
					<td>
						${staff.job}
					</td>
					<td>
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=toShowStaffInfo&id=${staff.id}"><img
								src="${pageContext.request.contextPath}/admin/images/edit.gif"
								border="0">[详细]</a>&nbsp;
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=toUpdateStaff&id=${staff.id}"><img
								src="${pageContext.request.contextPath}/admin/images/edit.gif"
								border="0">[修改]</a>&nbsp;
						<a
							href="${pageContext.request.contextPath}/admin/staff.do?task=deleteStaff&id=${staff.id}"
							onclick="return confirm('是否确定删除!');"><img
								src="${pageContext.request.contextPath}/admin/images/del.gif"
								border="0">[删除]</a>
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
//ejiaA1("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>
