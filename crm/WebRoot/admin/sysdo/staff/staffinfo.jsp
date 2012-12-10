<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�м���ҳ��</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				���µ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>���µ���ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/staff" method="post" onsubmit="return check();">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					���µ�����Ϣ
				</th>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<strong>������Ϣ</strong>
				</td>
				<td colspan="2" align="center">
					<strong>��ϸ��Ϣ</strong>
				</td>
			</tr>
			<tr>
				<td align="right" width="20%">
					ְԱ������
				</td>
				<td width="25%">
					<html:text property="staffname"  maxlength="15" />
				</td>
				<td align="right" width="20%">
					�������ڣ�
				</td>
				<td>
					<html:text property="birthdays"  maxlength="15" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="brithday" styleClass="Wdate" readonly="true"/><html:text property="age" size="4" onfocus="javascript:putOld(this);" readonly="true"></html:text>��
				</td>
			</tr>
			<tr>
				<td align="right">
					״̬:
				</td>
				<td>
					<html:select property="state">
      					<html:option value="1">��ְ</html:option>
      					<html:option value="0">��ְ</html:option>
      				</html:select>
				</td>
				<td align="right">
					����״��:
				</td>
				<td >
					<html:select property="ismarry">
						<html:option value="2">δ֪</html:option>
      					<html:option value="0">δ��</html:option>
      					<html:option value="1">�ѻ�</html:option>
      				</html:select>
				</td>
			</tr>
			<tr>
				<td align="right">
					�Ա�:
				</td>
				<td >
					<html:select property="sex">
						<html:option value="2">δ֪</html:option>
      					<html:option value="0">��</html:option>
      					<html:option value="1">Ů</html:option>
      				</html:select>
				</td>
				<td align="right">
					������ò:
				</td>
				<td >
					<html:text property="polstate"  maxlength="15" />
				</td>
			</tr>
			<tr>
				<td align="right">
					ƴ������:
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
					��ʼ���:
				</td>
				<td >
					<html:text property="wubi"  />
				</td>
				<td align="right">
					��ϵ�绰:
				</td>
				<td >
					<html:text property="tel"  maxlength="50" />
				</td>
			</tr>
			<tr>
				<td align="right">
					��������:
				</td>
				<td >
					<html:select property="deptid">
						<html:option value="-1">==��ѡ��==</html:option>
						<logic:present name="deptList">
							<logic:iterate id="dept" name="deptList">
	      						<html:option value="${dept.id}">${dept.deptName}</html:option>
	      					</logic:iterate>
      					</logic:present>
      				</html:select>
				</td>
				<td align="right">
					�ֻ�����:
				</td>
				<td >
					<html:text property="mobile"  maxlength="50" />
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="nation"  />
				</td>
				<td align="right">
					�μӹ���ʱ��:
				</td>
				<td >
					<html:text property="workdates" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="workdate" styleClass="Wdate"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					����:
				</td>
				<td colspan="1">
					<html:text property="birthadd"  />
				</td>
				<td align="right">
					����:
				</td>
				<td >
					<html:text property="workage" size="5"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					���֤��:
				</td>
				<td colspan="1">
					<html:text property="idcode"  />
				</td>
				<td align="right">
					�뱾��λʱ��:
				</td>
				<td >
					<html:text property="indates" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="indate" styleClass="Wdate" />
				</td>
			</tr>
			<tr>
				<td align="right">
					��ע:
				</td>
				<td colspan="1">
					<html:text property="remark"/>
				</td>
				<td align="right">
					����λ����:
				</td>
				<td >
					<html:text property="inage" size="5"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					��ɫ�б�:
				</td>
				<td colspan="1">
					<table>
						<tr>
							<td><html:checkbox property="isdoctor" value="1"></html:checkbox>ҽ��</td>
							<td><html:checkbox property="isnurse" value="1"></html:checkbox>��ʿ</td>
							<td><html:checkbox property="ismt" value="1"></html:checkbox>ҽ��</td>
						</tr>
						<tr>
							<td><html:checkbox property="isop" value="1"></html:checkbox>����Ա</td>
							<td><html:checkbox property="ispre" value="1"></html:checkbox>����Ȩ</td>
							<td><html:checkbox property="isapp" value="1"></html:checkbox>����Ա</td>
						</tr>
					</table>
				</td>
				<td align="right">
					ѧ��:
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
					רҵ:
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
					ְ��:
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
					ְ��:
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
					��ϵ��ַ:
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
<!--�����ؼ� -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
	
<!-- ������� -->
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
			alert('����������д�Ƿ�!');
		}
	}catch(e){
		obj.value="";		
		document.getElementById("brithday").value="";
		document.getElementById("brithday").focus();
		alert('����������д�Ƿ�!');
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
				alert("������ְԱ����");
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
