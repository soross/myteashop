<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>�м���ҳ��</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<table cellpadding="2" cellspacing="1" border="0" class="tableBorder" align=center>
  <tr>
    <th colspan=2 height=25>�½���Ա����</th>
  </tr>
  <tr>
	<td height=25 class="pl20">
		<b>����ѡ�</b><a
			href="${pageContext.request.contextPath}/admin/vip.do?task=deptList">��������</a>
		|
		<a href="${pageContext.request.contextPath}/admin/vip.do?task=toAddDept">�ῨԤ��</a> |
		[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
	</td>
  </tr>
</table>
<html:form action="/admin/cust" method="post">
<table cellpadding="3" cellspacing="1" border="0" class="tableBorder tableth" align="center" width="100%">
<tr>
  <th height="25" style="width:80px;">����</th>
  <td style="width:120px;"><html:text property="code"  size="20" maxlength="30" /> </td>
  <th style="width:80px;" height=25>����</th>
  <td style="width:120px;"  colspan="3"> <html:text property="username"  size="20"  /> </td>
  <th style="width:120px;" height=25>����</th>
  <td colspan="3"><html:text property="nameCode"  size="20"/> </td>
</tr>

<tr>
  <th height=25>����</th>
  <td> <html:text property="country"  size="20"  /> </td>
  <th height=25>����</th>
  <td  colspan="3"> <html:text property="nation"  size="20" /> </td>

	<th height=25>���</th>
	<td>
	   <html:select property="marry">
	  	<html:option value="0">δ��</html:option>
	  	<html:option value="1">�ѻ�</html:option>
	  </html:select>
		</td>
			<th height="25">�Ա�</th>
	 	<td>
	  <html:select property="garden">
	  	<html:option value="0">��</html:option>
	  	<html:option value="1">Ů</html:option>
	  </html:select>
	 	</td>

</tr>
<tr>
  <th height=25>��������</th>
  <td><html:text property="birthday"  size="13"  /><html:text property="old" size="5"/>��</td>
	  
  <th height=25>����</th>
  <td><html:text property="weight"  size="5" />Kg</td>
  <th height=25>���</th>
  <td>
  <html:text property="height"  size="5" />CM
  </td>
  
  <th height=25>ѧ��</th>
  <td  colspan="3">
	 <html:text property="college"  size="20" />
  </td>
</tr>
<tr>
  <th height=25>ְҵ</th>
  <td> <html:text property="work"  size="20" /> </td>
  <th height=25>������λ</th>
  <td  colspan="3"> <html:text property="workUnit"  size="20" /> </td>
  <th height=25>��λ����</th>
  <td  colspan="3"> <html:text property="workCode"  size="20" /> </td>
</tr>


<tr>
  <th height=25>������Ϣ</th>
  <td> <html:text property="allergyInfo"  size="20" /> </td>
  <th height=25>������ַ</th>
  <td  colspan="3"> <html:text property="birthAdd"  size="20" /> </td>
  <th height=25>�������ʱ�</th>
  <td  colspan="3"> <html:text property="birthZip"  size="20" /> </td>
</tr>


<tr>
  <th height=25>���֤��</th>
  <td> <html:text property="idCode"  size="20" /> </td>
  <th height=25>���ڵ�ַ</th>
  <td  colspan="3"> <html:text property="idAdd"  size="20" /> </td>
  <th height=25>���ڵ��ʱ�</th>
  <td  colspan="3"> <html:text property="idZip"  size="20" /> </td>
</tr>


<tr>
  <th height=25>�ֻ�����</th>
  <td> <html:text property="mobile"  size="20" /> </td>
  <th height=25>��ס��ַ</th>
  <td  colspan="3"> <html:text property="liveAdd"  size="20" /> </td>
  <th height=25>��ס���ʱ�</th>
  <td  colspan="3"> <html:text property="liveZip"  size="20" /> </td>
</tr>
<tr>
  <th height=25>��ϵ��</th>
  <td> <html:text property="linkman"  size="20" /> </td>
  <th height=25>��ϵ�˵�ַ</th>
  <td  colspan="3"> <html:text property="linkAdd"  size="20" /> </td>
  <th height=25>��ϵ�˵绰</th>
  <td  colspan="3"> <html:text property="linkTell"  size="20" /> </td>
</tr>

<tr>
  <th height=25>��������</th>
  <td>  
  <html:select property="payType">
  	<html:option value="0">�ֽ�</html:option>
  	<html:option value="1">ˢ��</html:option>
  	<html:option value="2">ҽ����</html:option>
  </html:select>
  </td>
  <th height=25>��������</th>
  <td  colspan="3">
  <html:select property="sickType">
  	<html:option value="0">��ͨ����Ժ</html:option>
  	<html:option value="1">���ء���Ժ</html:option>
  	<html:option value="2">��ͨ����Ժ</html:option>
  </html:select>
  </td>
  <th height=25>ҵ��Ա</th>
  <td  colspan="3">
  <html:select property="staff">
  	<html:option value="1">����</html:option>
  	<html:option value="2">����</html:option>
  	<html:option value="3">����</html:option>
  </html:select>
  </td>  
</tr>

<tr>
  <th height=25>��Ϣ��Դ</th>
  <td>
  <html:select property="srcInfo">
  	<html:option value="1">ҽ������</html:option>
  	<html:option value="2">��վ</html:option>
  	<html:option value="3">���</html:option>
  </html:select></td>
  <th height=25>IC����</th>
  <td  colspan="3"> <html:text property="icCardCode"  size="20" /> </td>
  <td colspan="5" rowspan="4">
	  <div class="context-menu-one menu-1" style="border:1px solid #234343;width:120px;height:150px;margin-left:20px;cursor:pointer;";>
	  </div>
  </td>
</tr>

<tr>
  <th height=25>��Ա����</th>
  <td><html:select property="vipType">
  	<html:option value="1">���ƻ�Ա</html:option>
  	<html:option value="2">���ƻ�Ա</html:option>
  	<html:option value="3">��ͨ��Ա</html:option>
  </html:select></td>
  <th height=25>��Ա����</th>
  <td  colspan="3"> <html:text property="vipCardCode"  size="20" /> </td>
</tr>

<tr>
  <th height=25>��Ч״̬</th>
  <td><html:select property="state">
  	<html:option value="1">��Ч</html:option>
  	<html:option value="2">����</html:option>
  	<html:option value="3">����</html:option>
  </html:select></td>
  <th height=25>���պ���</th>
  <td  colspan="3"> <html:text property="safeCode"  size="20" /> </td>
</tr>
<tr>
  <th height=25>��ע</th>
  <td colspan="5">
  <html:textarea property="remark" cols="30" rows="5"></html:textarea>
  </td>
</tr>
<tr>
<td colspan="5">

	<table>
	<tr>
	  <th height=25>�ֿ���</th>
	  <td> <html:text property="cardUser"  size="20" /> </td>
	</tr>
	<tr>
	  <th height=25>��ǰ���</th>
	  <td><html:text property="balance"  size="20" /></td>
	</tr>
	<tr>
	  <th height=25>&nbsp;</th>
	  <td>&nbsp;</td>
	</tr>
	</table>
</td>
<td colspan="5">
	
	<table>
	<tr>
	  <th height=25>ʱ��</th>
	  <td> <input type="text" name="inputDate" /> </td>
	  <th height=25>Ԥ����</th>
	  <td> <input type="text" name="money" /> </td>
	</tr>
	<tr>
	  <th height=25>��ע</th>
	  <td colspan="3"> <input type="text" name="inputRemark"  size="20" /> </td>
	</tr>
	<tr>
	  <td colspan="4"> <input type="checkbox" name="print" />������ӡ</td>
	</tr>
	</table>
</td>
</tr>

</table>
</html:form>
</body>
</html:html>
