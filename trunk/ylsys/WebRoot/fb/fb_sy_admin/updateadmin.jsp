<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/global.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.4.2.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
body {
	font-family: "宋体";
	FONT-SIZE: 12pt;
}

.MyTABLE {
	BORDER-BOTTOM: #88ACD9 1px solid;
	BORDER-RIGHT: #88ACD9 1px solid;
	BORDER-TOP: #88ACD9 1px solid;
	BORDER-LEFT: #88ACD9 1px solid;
	BORDER-COLLAPSE: collapse;
	padding: 0px 0px 0px 0px;
}

.MyTABLE TD {
	BORDER-BOTTOM: #88ACD9 1px solid;
	BORDER-RIGHT: #88ACD9 1px solid;
	BORDER-TOP: #88ACD9 1px solid;
	BORDER-LEFT: #88ACD9 1px solid;
	FONT-FAMILY: "宋体";
	FONT-SIZE: 12pt;
	height: 22px;
}

.MyTABLE.tableHeader {
	FONT-WEIGHT: bold;
	FONT-SIZE: 12pt;
	BACKGROUND: url(headerbg.gif) #d3e5fa;
	height: 28px;
	TEXT-ALIGN: center;
}

.button {
	BORDER-TOP: #88ACD9 1px solid;
	BORDER-BOTTOM: #88ACD9 1px solid;
	BORDER-LEFT: #88ACD9 1px solid;
	BORDER-RIGHT: #88ACD9 1px solid;
	HEIGHT: 22px;
	TEXT-DECORATION: none;
	COLOR: #000066;
	CURSOR: hand;
	BACKGROUND: URL(button_back.gif);
}

.enter {
	width: 150px;
	height: 18px;
}
</style>
		<script language="javascript">
var flag=true;
var usernamenum= false;
var spwdnum = false;
//去左右空格;
function trim(s){
     return rtrim(ltrim(s));
}
//去左空格;
function ltrim(s){
     return s.replace( /^\s*/, "");
}
//去右空格;
function rtrim(s){
     return s.replace( /\s*$/, "");
}

//中文;
function isChinese(s){
    s = trim(s);
    var p = /^[\u0391-\uFFE5]+$/;
    return p.test(s);
}

//验证长度
function limitLen(s,Min,Max){
      s=trim(s);
    if(s=="") return false;
    if((s.length<Min)||(s.length>Max))
        return false;
    else
        return true;
}
//用户名正则
function hasAccountChar(s){

    var p = /^[a-zA-Z0-9][a-zA-Z0-9_-]{2,15}$/;
    return p.test(s);
}


//验证密码
function checkpass(){
var passms=document.all.pwd.value;
if(limitLen(passms,3,15)){
 document.all.user_passspan.innerHTML="<font color='#2027F0'>&nbsp;正确</font>";
}
else if(!limitLen(passms,3,15)){
document.all.user_passspan.innerHTML="<font color='#F0251E'>&nbsp;密码长度3-15</font>";
}
}


//确认密码
function seccheckpass(){
var one=document.all.pwd.value;
var two=document.all.newpwd.value;
if(limitLen(two,3,15)){
 document.all.user_secpassspan.innerHTML="<font color='#2027F0'>&nbsp;正确</font>";
}
else if(!limitLen(two,3,15)){
document.all.user_secpassspan.innerHTML="<font color='#F0251E'>&nbsp;密码长度3-15</font>";
}

 if(one==two){
 document.all.user_secpassspan.innerHTML="<font color='#2027F0'>&nbsp;正确</font>";
}
else{
 document.all.user_secpassspan.innerHTML="<font color='#F0251E'>&nbsp;与上次密码不一致</font>";
}

}

function comit(){
	var one=document.all.pwd.value;
	var two=document.all.newpwd.value;
 if(one==two&&limitLen(one,3,15)&&limitLen(two,3,15)){ 
 
 return true;
 }
  else{
  
  return false;
  }
}


</script>

  </head>
  
  <body class="MyTABLE">
    <s:form action="updateadminpass.shtml" method="post" onsubmit="return comit();">
			<table border="1" align="center">
				<caption>
					<h1>
						修改资料
					</h1>
				</caption>
					<tr>
					<td>
						用&nbsp;户&nbsp;名
					</td>
					<td>
					<s:hidden id="userid" name="userid" value="%{userid}"></s:hidden>
					<s:property value="#request.adminbeans.A_UserName"/>
					</td>
				</tr>
				<tr>
					<td>
						新&nbsp;密&nbsp;码
					</td>
					<td>
						<input  maxlength="30" name="pwd" id="pwd"
							 onblur="checkpass();" class="enter"></input>
						<span id="user_passspan"></span>
					</td>
				</tr>
				<tr>
					<td>
						确认密码
					</td>
					<td>
						<input  maxlength="30" class="enter" id="newpwd"
							 name="newpwd"
							onblur="seccheckpass()">
						<span id="user_secpassspan"></span>
					</td>
				</tr>
				<tr>
								 <s:select      
        	label="角色权限"
            list="#request.rolelist"
            listKey="R_RoleId"
            listValue="R_RoleName"
            name="testid"
            emptyOption="false"
      		value="#request.adminrolebean.AR_RoleId"
            />	
				</tr>
				<tr>
					
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="增加" class="button">
						<input type="reset" value="重置" class="button" />
					</td>
				</tr>
			</table>
		</s:form>
  </body>
</html>
