<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>添加集团</title>

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
	-->
	</style>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function subAdd(){
		
		  
		  if(checkname()&&checkEmail()&&checktel()&&checkJobcode()){
		 groupForm.submit();
		  }
		}
		
		
		
		
		
		function checkname(){
		 var uname=document.getElementById("name").value;
		 var flag;
		 if(trim(uname).length==0){
		  flag=false;
		  document.getElementById("uname").innerHTML="联系人姓名不能为空";
		 }
		 else if(trim(uname).length>=15){
		 flag=false;
		  document.getElementById("uname").innerHTML="输入的值过长";
		 }
		 else{
		  flag=true;
		 }
		 return flag;
		}	
		function checkEmail(){
		  var email=document.getElementById("email").value;
	      var flag;
	   
	      if(!/^[0-9A-Za-z]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(email)){
	  
	   
	        document.getElementById("ue").innerHTML="邮箱地址不正确";
		    flag=false;
	  
	       }
	       else if(trim(email).length>=20){
		   flag=false;
		  document.getElementById("ue").innerHTML="输入的值过长";
		 }
	       else{
	       flag=true;
	  
	      }
	       return flag;
	}	
		function checktel(){
		 var handp=document.getElementById("telephone").value;
		 var flag;
		 if(trim(handp).length==0){
		  flag=false;
		  document.getElementById("utel").innerHTML=" 电话号码不能为空";
		 }
		 else if(trim(handp).length>=15){
		 flag=false;
		  document.getElementById("utel").innerHTML="输入的值过长";
		 }
		 else if(!/^[0-9]{1,}$/.test(handp)){
	       document.getElementById("utel").innerHTML=" 电话号码应为数字";
	       flag=false;
		   
		 }
		 else{
		  flag=true;
		 }
		 return flag;
		}	
		function checkJobcode(){
		 var job=document.getElementById("job").value;
		 var flag;
		  
		 if(trim(job).length==0){
		  flag=false;
		  document.getElementById("ujob").innerHTML="职位不能为空";
		 }
		 else if(trim(job).length>=15){
		 flag=false;
		  document.getElementById("ujob").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		
		
		
		
		 var xmlHttp;	
    function createhttprequest(){
      if (window.ActiveXObject){
	    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  else if (window.XMLHttpRequest){
	    xmlHttp = new XMLHttpRequest();
	 }
   }
   
   
   function startrequest(){
   
     createhttprequest();
     var sid=document.getElementById("province").value;
     

    var url="${pageContext.request.contextPath}/admin/group.do?task=getCitys&pid="+sid;
     xmlHttp.open("GET",url,true);
	xmlHttp.onreadystatechange=callback;
	xmlHttp.send(null); 

   }	
   function callback(){
   if (xmlHttp.readyState == 4){
			if (xmlHttp.status == 200){
				var sh=xmlHttp.responseText;
				document.getElementById("dt").innerHTML=sh;
			}
		}
   }
   function subAdd(ta){
   
   document.all.item("task").value=ta;
   groupForm.submit();
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
            	<div align="center" class="STYLE5"><b>
              		添加集团联系人
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/group" styleId="groupForm">
            	<input type="hidden" name="task">
            	
	            	<table width="100%">
	            	    <tr>
	            		<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">集团名：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF"><html:hidden property="groupid"/>${groupname}</td>
	            		</tr>
	            		<tr>
	            		<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">姓名：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE7"><html:text property="name"/><span id="uname"></span></td>
	            		</tr>
	            		<tr>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">性别：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" ><html:radio property="sex" value="0">男</html:radio>
					        <html:radio property="sex" value="1">女</html:radio></td>
	            		</tr>
	            		<tr>
	            		<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">职位：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE7"><html:text property="job"/><span id="ujob"></span></td>
	            		</tr>
	            		<tr>	
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">联系电话：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE7"><html:text property="telephone"/><span id="utel"></span></td>
	            		</tr>
	            		<tr>
	            		<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE5" align="center">Email：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE7"><html:text property="email"/><span id="ue"></span></td>
	            		</tr>	
	            			
	            		<tr>
	            			<td colspan=height="40" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="40" bgcolor="#FFFFFF" class="STYLE1" align="center"><html:reset value="重置"></html:reset></td>
	            			<td height="40" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value="提交" onclick="subAdd('addLinker');"></html:button>
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

