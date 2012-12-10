<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
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
	<html:form action="/admin/staff" method="post" onsubmit="return check();">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					人事档案信息
				</th>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<strong>基本信息</strong>
				</td>
				<td colspan="2" align="center">
					<strong>详细信息</strong>
				</td>
			</tr>
			<tr>
				<td align="right" width="20%">
					职员姓名：
				</td>
				<td width="25%">
					<html:text property="staffname"  maxlength="15" />
				</td>
				<td align="right" width="20%">
					出生日期：
				</td>
				<td>
					<html:text property="birthdays"  maxlength="15" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="brithday" styleClass="Wdate" readonly="true"/><html:text property="age" size="4" onfocus="javascript:putOld(this);" readonly="true"></html:text>岁
				</td>
			</tr>
			<tr>
				<td align="right">
					状态:
				</td>
				<td>
					<html:select property="state">
      					<html:option value="1">在职</html:option>
      					<html:option value="0">离职</html:option>
      				</html:select>
				</td>
				<td align="right">
					婚姻状况:
				</td>
				<td >
					<html:select property="ismarry">
						<html:option value="2">未知</html:option>
      					<html:option value="0">未婚</html:option>
      					<html:option value="1">已婚</html:option>
      				</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					性别:
				</td>
				<td >
					<html:select property="sex">
						<html:option value="2">未知</html:option>
      					<html:option value="0">男</html:option>
      					<html:option value="1">女</html:option>
      				</html:select>
				</td>
				<td align="right">
					政治面貌:
				</td>
				<td >
					<html:text property="polstate"  maxlength="15" />
				</td>
			</tr>
			<tr>
				<td align="right">
					拼音简码:
				</td>
				<td >
					<html:text property="pinyin"  readonly="true"/>
				</td>
				<td align="right">
					E-mail:
				</td>
				<td >
					<html:text property="email"  maxlength="50" />
				</td>
			</tr>
			<tr>
				<td align="right">
					五笔简码:
				</td>
				<td >
					<html:text property="wubi"  />
				</td>
				<td align="right">
					联系电话:
				</td>
				<td >
					<html:text property="tel"  maxlength="50" />
				</td>
			</tr>
			<tr>
				<td align="right">
					所属科室:
				</td>
				<td >
					<html:select property="deptid">
						<html:option value="-1">==请选择==</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
      				</html:select>
				</td>
				<td align="right">
					手机号码:
				</td>
				<td >
					<html:text property="mobile"  maxlength="50" />
				</td>
			</tr>
			<tr>
				<td align="right">
					民族:
				</td>
				<td colspan="1">
					<html:text property="nation"  />
				</td>
				<td align="right">
					参加工作时间:
				</td>
				<td >
					<html:text property="workdates" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="workdate" styleClass="Wdate"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					籍贯:
				</td>
				<td colspan="1">
					<html:text property="birthadd"  />
				</td>
				<td align="right">
					工龄:
				</td>
				<td >
					<html:text property="workage" size="5"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					身份证号:
				</td>
				<td colspan="1">
					<html:text property="idcode"  />
				</td>
				<td align="right">
					入本单位时间:
				</td>
				<td >
					<html:text property="indates" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="indate" styleClass="Wdate" />
				</td>
			</tr>
			<tr>
				<td align="right">
					备注:
				</td>
				<td colspan="1">
					<html:text property="remark"/>
				</td>
				<td align="right">
					本单位工龄:
				</td>
				<td >
					<html:text property="inage" size="5"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					角色列表:
				</td>
				<td colspan="1">
					<table>
						<tr>
							<td><html:checkbox property="isdoctor" value="1"></html:checkbox>医生</td>
							<td><html:checkbox property="isnurse" value="1"></html:checkbox>护士</td>
							<td><html:checkbox property="ismt" value="1"></html:checkbox>医技</td>
						</tr>
						<tr>
							<td><html:checkbox property="isop" value="1"></html:checkbox>操作员</td>
							<td><html:checkbox property="ispre" value="1"></html:checkbox>处方权</td>
							<td><html:checkbox property="isapp" value="1"></html:checkbox>器具员</td>
						</tr>
					</table>
				</td>
				<td align="right">
					学历:
				</td>
				<td >
					<html:text property="collage" />
				</td>
			</tr>
			<tr>
				<td align="right">
					&nbsp;
				</td>
				<td colspan="1">
					&nbsp;
				</td>
				<td align="right">
					专业:
				</td>
				<td >
					<html:text property="major" />
				</td>
			</tr>
			<tr>
				<td align="right">
					&nbsp;
				</td>
				<td colspan="1">
					&nbsp;
				</td>
				<td align="right">
					职务:
				</td>
				<td >
					<html:text property="job" />
				</td>
				
			</tr>
			<tr>
				<td align="right">
					&nbsp;
				</td>
				<td colspan="1">
					&nbsp;
				</td>
				<td align="right">
					职称:
				</td>
				<td >
					<html:text property="jobtitle" />
				</td>
			</tr>	
			<tr>
				<td align="right">
					&nbsp;
				</td>
				<td colspan="1">
					&nbsp;
				</td>
				<td align="right">
					联系地址:
				</td>
				<td >
					<html:text property="address" />
				</td>
			</tr>					
		</table>
	</html:form>
	<br>
	&nbsp;
</body>
<!--日历控件 -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
	
<!-- 年龄计算 -->
<script language="javascript">
function putOld(obj){
	try{
		var y = (document.getElementById("brithday").value).substring(0,4);
		var date = new Date();
		var ny = date.getFullYear();
		if((parseInt(ny-y+1))>0){
			obj.value=(ny-y+1);
		}else{
			obj.value="";
			document.getElementById("brithday").value="";
			document.getElementById("brithday").focus();
			alert('出生日期填写非法!');
		}
	}catch(e){
		obj.value="";		
		document.getElementById("brithday").value="";
		document.getElementById("brithday").focus();
		alert('出生日期填写非法!');
	}
}
</script>

<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
<script language="javascript">
		function clearText(temp){
			temp.value="";		
		}
		
		function checkName(){
			var name = document.getElementById("dataName").value;
			if(name.length==0){
				alert("请输入职员名称");
				return false;
			}else{
				return true;
			}
		}
		
		function check(){
			return checkName();
		}
	</script>
</html:html>
