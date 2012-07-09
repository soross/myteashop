<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改用户</title>

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
	.STYLE1 {font-size: 12px}
	.STYLE5 {font-size: 14px;color:}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	.STYLE5 {
	font-size: 18px;
	font-weight: bold;
	color: #3AB6F8;
}
.STYLE6 {
	font-size: 24px;
	font-weight: bold;
	color: #3AB6F8;
}
	-->
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/testform.js"></script>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}	
		function subUp(){
		
		  if(checkUsername()&&checkPass()&&checkHome()&&checkCode()&&checkPhone()&&checkEmail()&&checkHand()&&checkJobcode()&&checkrole()&&checkAddress())
		  {
		  userForm.submit();
		  }
		  
		}
		
		function checkPass(){
		 var pwd=document.getElementById("password").value;
	  var flag;
	
	  if(!/^[0-9A-Za-z]{3,15}$/.test(pwd)){
	  
	   
	   document.getElementById("pass").innerHTML=" 密码必须是数字或字母";
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
		  document.getElementById("uname").innerHTML=" 真实姓名不能为空";
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
		  document.getElementById("uhome").innerHTML=" 籍贯不能为空";
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
	  
	   
	    document.getElementById("ucode").innerHTML=" 身份证号应为18位数字";
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
		  document.getElementById("uphone").innerHTML=" 电话号码不能为空";
		 }
		 else if(!/^[0-9]{1,}$/.test(tel)){
	  
	   
	       document.getElementById("uphone").innerHTML=" 电话号码应为数字";
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
	  
	   
	        document.getElementById("uemail").innerHTML="邮箱地址不正确";
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
		  document.getElementById("uhand").innerHTML=" 手机号不能为空";
		 }
		 else if(!/^[0-9]{1,}$/.test(handp)){
	  
	   
	       document.getElementById("uhand").innerHTML=" 手机号应为数字";
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
		  document.getElementById("ujob").innerHTML=" 工号不能为空";
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
	       document.getElementById("urole").innerHTML="角色不能为空";
	       }
	  
		 
		 return flag;
		}	
		function checkAddress(){
		 var address=document.getElementById("address").value;
		 var flag;
		 if(trim(address).length==0){
		  flag=false;
		  document.getElementById("uaddress").innerHTML=" 地址不能为空";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}
		function returns(){
		history.back();
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
                <td width="60"></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"></div></td>
                    <td class="STYLE1"><div align="center"></div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"></div></td>
                    <td class="STYLE1"><div align="center"></div></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"></div></td>
                    <td class="STYLE1"><div align="center"></div></td>
                  </tr>
                </table></td>
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
              		修改用户
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/user">
            	<input type="hidden" name="task" value="updateUser">
	            	<table width="100%">
	            	    <tr>
	            			<td class="STYLE5" colspan="2" height="35" width="528" bgcolor="#FFFFFF" class="STYLE1" align="right">用户ID</td>
	            			<td colspan="2" height="35" width="622" bgcolor="#FFFFFF"><html:hidden property="userid"/>${uid }</td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">密码</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:password property="password"/><span id="pass"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right" >真实姓名</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="username"/><span id="uname"></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">性别</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:radio property="sex" value="0">男</html:radio>
					        <html:radio property="sex" value="1">女</html:radio></td>
	            			
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1"  align="right">籍贯</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="homeplace"/><span id="uhome"></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">身份证号码</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="code"/><span id="ucode"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" align="right">电话号码</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="tel"/><span id="uphone"></span></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">电子邮件</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="email"/><span id="uemail"></span></td>
	            		</tr>           	
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">手机</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="phone"/><span id="uhand"></span></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right">工号</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:text property="jobno"/><span id="ujob"></span></td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right" >所属角色</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><logic:present name="rolelist">
						<logic:notEmpty name="rolelist">
							<logic:iterate id="role" name="rolelist">
								<html:multibox property="trole" value="${role.roleid}"></html:multibox>${role.rolename}
                            </logic:iterate>
						</logic:notEmpty>
					</logic:present><span id="urole"></span></td>
	            			
	            			
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="35" bgcolor="#FFFFFF" class="STYLE1" align="right" >地址</td>
	            			<td colspan="2" height="35" bgcolor="#FFFFFF"><html:textarea property="address"/><span id="uaddress"></span></td>
	            			 
	            			
	            		</tr>
	            		<tr>
	            			<td height="35" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="35" bgcolor="#FFFFFF" class="STYLE1" align="center">
	            			<html:button property="" value="返回" onclick="returns();"></html:button>
	            			</td>
	            			<td height="35" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value="提交" onclick="subUp();"></html:button>
	            			</td>
	            			<td height="35" bgcolor="#FFFFFF"></td>
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

