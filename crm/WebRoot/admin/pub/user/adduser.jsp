<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>����û�</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px;}
	.STYLE5 {font-size: 14px;color:}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 14px;
	}
	.STYLE5 {
	font-size: 18px;
	font-weight: bold;
	color: #3AB6F8;
}
.STYLE6 {
	font-size: 18px;
	color:#03515d;
}
	-->
	</style>
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/testform.js"></script>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function subAdd(){
		
		  if(checkUserid()&&checkUsername()&&checkPass()&&checkHome()&&checkCode()&&checkPhone()&&checkEmail()&&checkHand()&&checkJobcode()&&checkrole()&&checkAddress())
		  {
		  userForm.submit();
		  }
		  
		}
		function checkUserid(){
		 var userid=document.getElementById("userid").value;
		 var flag;
		 if(trim(userid).length==0){
		  flag=false;
		  document.getElementById("uid").innerHTML=" �û�ID����Ϊ��";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkPass(){
		 var pwd=document.getElementById("password").value;
	  var flag;
	
	  if(!/^[0-9A-Za-z]{3,15}$/.test(pwd)){
	  
	   
	   document.getElementById("pass").innerHTML=" ������������ֻ���ĸ";
	   flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkUsername(){
		 var username=document.getElementById("username").value;
		 var flag;
		 if(trim(username).length==0){
		  flag=false;
		  document.getElementById("uname").innerHTML=" ��ʵ��������Ϊ��";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkHome(){
		 var home=document.getElementById("homeplace").value;
		 var flag;
		 if(trim(home).length==0){
		  flag=false;
		  document.getElementById("uhome").innerHTML=" ���᲻��Ϊ��";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkCode(){
		 var code=document.getElementById("code").value;
	     var flag;
	
	     if(!/^[0-9]{18}$/.test(code)){
	  
	   
	    document.getElementById("ucode").innerHTML=" ���֤��ӦΪ18λ����";
	     flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkPhone(){
		 var tel=document.getElementById("tel").value;
		 var flag;
		 if(trim(tel).length==0){
		  flag=false;
		  document.getElementById("uphone").innerHTML=" �绰���벻��Ϊ��";
		 }
		 else if(!/^[0-9]{1,}$/.test(tel)){
	  
	   
	       document.getElementById("uphone").innerHTML=" �绰����ӦΪ����";
	       flag=false;
		   
		 }
		 else{
		  flag=true;
		 }
		 return flag;
		}	
		function checkEmail(){
		  var email=document.getElementById("email").value;
	      var flag;
	  
	      if(trim(email).length=0&&!/^[0-9A-Za-z]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(email)){
	  
	   
	        document.getElementById("uemail").innerHTML="�����ַ����ȷ";
		    flag=false;
	  
	       }else{
	  
	
	       flag=true;
	  
	      }
	       return flag;
	}	
		function checkHand(){
		 var handp=document.getElementById("phone").value;
		 var flag;
		 if(trim(handp).length==0){
		  flag=false;
		  document.getElementById("uhand").innerHTML=" �ֻ��Ų���Ϊ��";
		 }
		 else if(!/^[0-9]{1,}$/.test(handp)){
	  
	   
	       document.getElementById("uhand").innerHTML=" �ֻ���ӦΪ����";
	       flag=false;
		   
		 }
		 else{
		  flag=true;
		 }
		 return flag;
		}	
		function checkJobcode(){
		 var job=document.getElementById("jobno").value;
		 var flag;
		 if(trim(job).length==0){
		  flag=false;
		  document.getElementById("ujob").innerHTML=" ���Ų���Ϊ��";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkrole(){
		 var role=document.getElementsByName("trole");
		 var flag= false;
		 for(var i=0;i<role.length;i++){
		   if(role[i].checked==true){
  				
  				flag=true;		      
				break;  			
  			}
		   }
		   if(!flag){
	       document.getElementById("urole").innerHTML="��ɫ����Ϊ��";
	       }
	  
		 
		 return flag;
		}	
		function checkAddress(){
		 var address=document.getElementById("address").value;
		 var flag;
		 if(trim(address).length==0){
		  flag=false;
		  document.getElementById("uaddress").innerHTML=" ��ַ����Ϊ��";
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
                <td width="90%" class="STYLE1" >��ǰλ�ã�����û�</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60">&nbsp;</td>
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
    <!-- title   7��-->
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" align="center" >         
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td height="20" bgcolor="#FFFFFF" align="center" width="100%">
            	<html:form action="/admin/user">
            	<input type="hidden" name="task" value="addUser">
	            	<table width="100%" class="STYLE1" align="left">
	            	    <tr>
	            			<td  height="20"  bgcolor="#FFFFFF" align="right">��&nbsp;��&nbsp;ID��</td>
	            			<td  height="20"  bgcolor="#FFFFFF"><html:text property="userid"/><span id="uid"></span></td>
	            		</tr>
	            		<tr>	
	            			<td  height="20" bgcolor="#FFFFFF" align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:password property="password"/><span id="pass"></span></td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF"  align="right" >��ʵ������</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:text property="username"/><span id="uname"></span></td>
	            		</tr>
	            		<tr>		
	            			<td  height="20" bgcolor="#FFFFFF"  align="right">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:radio property="sex" value="0">��</html:radio>
					        <html:radio property="sex" value="1">Ů</html:radio></td>
	            			
	            		</tr>
	            		<tr>
	            			<td  height="20" bgcolor="#FFFFFF"   align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�᣺</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:text property="homeplace"/><span id="uhome"></span></td>
	            		</tr>
	            		<tr>		
	            			<td height="20" bgcolor="#FFFFFF"  align="right">��&nbsp;��&nbsp;֤��</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:text property="code"/><span id="ucode"></span></td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" align="right">�绰���룺</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:text property="tel"/><span id="uphone"></span></td>
	            		</tr>
	            		<tr>		
	            			<td height="20" bgcolor="#FFFFFF"  align="right">�����ʼ���</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:text property="email"/><span id="uemail"></span></td>
	            		</tr>           	
	            		<tr>
	            			<td  height="20" bgcolor="#FFFFFF" align="right">��&nbsp;&nbsp;&nbsp;&nbsp;����</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:text property="phone"/><span id="uhand"></span></td>
	            		</tr>
	            		<tr>		
	            			<td  height="20" bgcolor="#FFFFFF"  align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�ţ�</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:text property="jobno"/><span id="ujob"></span></td>
	            		</tr>
	            		<tr>
	            			<td  height="20" bgcolor="#FFFFFF"  align="right" >������ɫ��</td>
	            			<td  height="20" bgcolor="#FFFFFF"><logic:present name="rolelist">
						<logic:notEmpty name="rolelist">
							<logic:iterate id="role" name="rolelist">
								<html:multibox property="trole" value="${role.roleid}"></html:multibox>${role.rolename}
                            </logic:iterate>
						</logic:notEmpty>
					</logic:present><span id="urole"></span></td>
	            			
	            			
	            		</tr>
	            		<tr>
	            			<td height="35" bgcolor="#FFFFFF" align="right" >��&nbsp;&nbsp;&nbsp;&nbsp;ַ��</td>
	            			<td height="35" bgcolor="#FFFFFF"><html:textarea property="address"/><span id="uaddress"></span></td>
	            			 
	            			
	            		</tr>
	            		<tr>	
	            			<td height="35" bgcolor="#FFFFFF" class="STYLE1" align="right"><br><html:reset value="����"></html:reset></td>
	            			<td height="35" bgcolor="#FFFFFF" align="left"><br>&nbsp;&nbsp;&nbsp;&nbsp;
	            			<html:button property="" value="�ύ" onclick="subAdd();"></html:button>
	            			</td>
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

