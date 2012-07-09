<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>添加联盟商家</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/testform.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/prototype.js"></script>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE7 {font-size: 18px;color: #FF0033;}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	.STYLE5 {
	font-size: 18px;
	font-weight: bold;
	color: #83D2F1;
}
.STYLE6 {
	font-size: 24px;
	font-weight: bold;
	color: #30BAF5;
}
	-->
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function subAdd(){
	    if(checkName()&&checkSname()&&checkType()&&checkPro()&&checkState()&&
	    checkEmp()&&checkZj()&&checkLevel()&&checkAddress()&&checkCor()
	    &&checkMan()&& checkTel()&&checkJob())
	    {
		  unionForm.submit();
		}
		}
		function checkName(){
		 var name=document.getElementById("fullName").value;
		 var flag;
		 if(trim(name).length==0){
		  flag=false;
		  document.getElementById("uname").innerHTML="请输入商家名称";
		 }
		  else if(trim(name).length>=49){
		 flag=false;
		  document.getElementById("uname").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkSname(){
		 var name=document.getElementById("shortName").value;
	  var flag;
	
	  if(trim(name).length==0){
	   document.getElementById("us").innerHTML="请输入商家简称";
	   flag=false;
	  }
	  else if(trim(name).length>=20){
		 flag=false;
		  document.getElementById("us").innerHTML="输入的值过长";
		 }
	  else{
		flag=true;
	  } 
	  return flag;
		}	
		function checkType(){
		 var type=document.getElementById("unionbType").value;
	  var flag;
	
	  if(type==0){
	   document.getElementById("type").innerHTML="请选择商家类型";
	   flag=false;
	  }
	  
	  else{
		flag=true;
	  } 
	  return flag;
		}	
		function checkPro(){
		 var sz=document.getElementById("property").value;
	  var flag;
	
	  if(sz==0){
	   document.getElementById("sz").innerHTML="请选择商家性质";
	   flag=false;
	  }
	  
	  else{
		flag=true;
	  } 
	  return flag;
		}	
		
		function checkState(){
		 var zk=document.getElementById("workstatus").value;
	  var flag;
	
	  if(zk==0){
	   document.getElementById("zk").innerHTML="请选择商家状态";
	   flag=false;
	  }
	  else{
	    
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkEmp(){
		 var fcount=document.getElementById("empCount").value;
	     var flag;
	
	  if(trim(fcount).length==0){
	   document.getElementById("sl").innerHTML="请输入员工数量";
	   flag=false;
	  }
	  else if(!/^[0-9]{1,}$/.test(fcount)){
	       document.getElementById("sl").innerHTML=" 员工数量应为数字";
	       flag=false; 
		 }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		
     function checkZj(){
		 var zj=document.getElementById("regmoney").value;
	     var flag;
	
	  if(trim(zj).length==0){
	   document.getElementById("zj").innerHTML="请输入注册资金";
	   flag=false;
	  }
	   else if(!/^[0-9]{1,}$/.test(zj)){
	       document.getElementById("zj").innerHTML=" 注册资金应为数字";
	       flag=false;  
		 }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
	function checkLevel(){
		 var jb=document.getElementById("VLevel").value;
	     var flag;
	
	  if(jb==0){
	   document.getElementById("jb").innerHTML="请选择商家级别";
	   flag=false;
	  }
	 
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
	function checkAddress(){
		 var addr=document.getElementById("unionbAddr").value;
	     var flag;
	
	  if(trim(addr).length==0){
	   document.getElementById("dz").innerHTML="请输入商家地址";
	   flag=false;
	  }
	 else if(trim(addr).length>=199){
		 flag=false;
		  document.getElementById("dz").innerHTML="输入的值过长";
		 }
	  else{
		flag=true;
	  } 
	  return flag;
		}	
	function checkCor(){
		 var cor=document.getElementById("corporation").value;
		 var flag;
		 if(trim(cor).length==0){
		  flag=false;
		  document.getElementById("fr").innerHTML="请输入商家法人";
		 }
		 else if(trim(cor).length>=20){
		 flag=false;
		  document.getElementById("fr").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkMan(){
		 var lxr=document.getElementById("linkman").value;
		 var flag;
		 if(trim(lxr).length==0){
		  flag=false;
		  document.getElementById("lxr").innerHTML="请输入联系人";
		 }
		 else if(trim(lxr).length>=15){
		 flag=false;
		  document.getElementById("lxr").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}
		function checkTel(){
		 var fcount=document.getElementById("tel").value;
	     var flag;
	
	  if(trim(fcount).length==0){
	   document.getElementById("phone").innerHTML="请输入联系方式";
	   flag=false;
	  }
	  else if(!/^[0-9]{1,}$/.test(fcount)){
	       document.getElementById("phone").innerHTML="联系方式应为电话号码";
	       flag=false; 
		 }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}		
		function checkJob(){
		 var job=document.getElementById("corJobs").value;
		 var flag;
		 if(trim(job).length==0){
		  flag=false;
		  document.getElementById("job").innerHTML="请输入联系人职位";
		 }
		 else if(trim(job).length>=20){
		 flag=false;
		  document.getElementById("job").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		
  
	</script>

</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <!-- add   update  -->
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${pageContext.request.contextPath}/admin/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10%"></td>
                <td width="90%" class="STYLE1"></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
                <td >&nbsp; </td>
                <td class="STYLE1"></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/admin/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <!-- end  add  update -->
  
  
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
    <!-- title   7列-->
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6">
          <tr>
            <td colspan="7" width="3%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF">
            	<div align="center" class="STYLE6"><b>
              		添加联盟商家
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/union" >
            	<input type="hidden" name="task" value="addUnion">
            	
	            	<table width="100%">
	            	    <tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">商家名称:</td>
	            			<td class="STYLE7" colspan="2" height="40"   bgcolor="#FFFFFF"><html:text property="fullName"/><span id="uname"></span></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40"  bgcolor="#FFFFFF"  align="right">商家简称：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="shortName"/><span id="us"></span></td>
	            		</tr>
	            		
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" align="right">类型：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="typelist">
	            			<logic:notEmpty name="typelist">
	            			<html:select property="unionbType">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="typelist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="type"></span>
	            			</td>
	            			
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF"  align="right">性质：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="volist">
	            			<logic:notEmpty name="volist">
	            			<html:select property="property">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="volist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present>
	            			<span id="sz"></span>
	            			</td>
	            			
	            		</tr>
	            		
	            		<tr>
	            			<td class="STYLE5"  colspan="2" height="40" bgcolor="#FFFFFF"  align="right" >经营状况：</td>
	            			<td class="STYLE7"  colspan="2" height="40" bgcolor="#FFFFFF">
	            			
	            			<logic:present name="statelist">
	            			<logic:notEmpty name="statelist">
	            			<html:select property="workstatus">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="statelist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="zk"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF"   align="right">员工数量：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="empCount"/><span id="sl"></span>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">注册资金:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="regmoney"/>￥<span id="zj"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">商家级别:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF">
	            			<logic:present name="levlist">
	            			<logic:notEmpty name="levlist">
	            			<html:select property="VLevel">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="levlist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present>
	            			<span id="jb"></span></td>
	            		    </tr>
	            			
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">商家地址:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="unionbAddr"/><span id="dz"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">法人:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="corporation"/><span id="fr"></span></td>
	            		</tr>	
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">联系人:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="linkman"/><span id="lxr"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">性别:</td>
	            			<td class="STYLE5" colspan="2" height="40"  bgcolor="#FFFFFF">
	            			<html:radio property="corSex" value="0">男</html:radio>
					        <html:radio property="corSex" value="1">女</html:radio>
					        </td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">联系方式:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="tel"/><span id="phone"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">职位：</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="corJobs"/><span id="job"></span></td>
	            			</tr>
	            			
	            			
	            	
	            		
	            		<tr>
	            			<td height="40" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="40" bgcolor="#FFFFFF" class="STYLE1" align="center"><html:reset value="重置"></html:reset></td>
	            			<td height="40" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value="提交" onclick="subAdd();"></html:button>
	            			</td>
	            			<td height="40" bgcolor="#FFFFFF"></td>
	            		</tr>           	
	            	</table>
            	</html:form>            
            </td>
            </tr>
          <!-- end data -->
        </table></td>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="${pageContext.request.contextPath}/admin/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="${pageContext.request.contextPath}/admin/images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4"></td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"></td>
                  <td width="45"></td>
                  <td width="45"></td>
                  <td width="40"></td>
                  <td width="100"></td>
                  <td width="40">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/admin/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html:html>

