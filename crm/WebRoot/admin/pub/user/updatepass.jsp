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
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}	
		function subUp(){
		
		  if(checkPass()&&checkNewpass()&&checkChpass())
		  {
		  userForm.submit();
		  }
		  
		}
		
		function checkPass(){
		 var pwd=document.getElementById("password").value;
		 var pass=${user.password};
	     var flag;
	
	  if(pwd!=pass){
	  
	   
	   document.getElementById("pass").innerHTML=" 原密码错误";
	   flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		
		
		function checkNewpass(){
		  var pwd=document.getElementById("newpass").value;
	  var flag;
	
	  if(!/^[0-9A-Za-z]{3,15}$/.test(pwd)){
	  
	   
	   document.getElementById("news").innerHTML=" 密码必须是数字或字母";
	   flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		
		function checkChpass(){
		  var pwd=document.getElementById("chpass").value;
		  var pass=document.getElementById("newpass").value;
	  var flag;
	
	  if(pwd!=pass){
	  
	   
	   document.getElementById("ch").innerHTML=" 确认密码错误!!!";
	   flag=false;
	  }else{
	  
	   
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
                <td width="90%" class="STYLE1">当前位置：密码修改</td>
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
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/user">
            	<input type="hidden" name="task" value="updatePass">            	
	            	<table width="100%"  align="center">
	            	    <tr>
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1" align="right">用&nbsp;户&nbsp;ID：</td>
	            			<td height="20"  bgcolor="#FFFFFF" style="color:red"><html:hidden property="userid"/>&nbsp;${user.userid }</td>
	            		</tr>
	            		<tr>	
	            			<td  height="20" bgcolor="#FFFFFF" class="STYLE1" align="right">原&nbsp;密&nbsp;码：</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:password property="password"/><span id="pass"></span></td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1" align="right" >新&nbsp;密&nbsp;码：</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:password property="newpass"/><span id="news"></td>
	            		</tr>
	            		<tr>	
	            			<td  height="20" bgcolor="#FFFFFF" class="STYLE1" align="right">确认密码：</td>
	            			<td  height="20" bgcolor="#FFFFFF"><html:password property="chpass"/><span id="ch"></span></td>
	            			
	            		</tr>
	            		
	            		<tr>	            			            			
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1" align="right"><br>
	            			<html:button property="" value="返回" onclick="returns();"></html:button>&nbsp;
	            			</td>
	            			<td height="20" bgcolor="#FFFFFF" ><br>&nbsp;&nbsp;
	            			<html:button property="" value="提交" onclick="subUp();"></html:button>
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

