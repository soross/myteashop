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

//用户名正则
function hasAccountChar(s){

    var p = /^[a-zA-Z0-9][a-zA-Z0-9_-]{2,15}$/;
    return p.test(s);
}


function checkrolename(){

var rolename = document.getElementById("rolename").value;

if(rolename.length==0){
	document.all.rolename.innerHTML="<font color='#F0251E'>&nbsp;不能为空</font>";
	return false;
}
else if(rolename.length<5){
	document.all.rolename.innerHTML="<font color='#F0251E'>&nbsp;长度不少于5位</font>";
	return false;
}
else if(rolename.length>20){

	document.all.rolename.innerHTML="<font color='#F0251E'>&nbsp;长度不少于20位</font>";
	return false;

}
else
		{
		  $.ajax( {
				url : domain+'/checkrolename.shtml',
				type : 'POST',
				dataType : 'json',
				cache : false,
				async : false,
				data : ({roleName : rolename}),
				timeout : 1000,
				error : function()
				{
					alert('系统有问题！！请联系站长');
				},
				success : function(json) 
				{
					if(json.checkflag=="true"){
					document.all.rolename.innerHTML="<font color='#2027F0'>&nbsp;"+(json.message)+"</font>";
					usernamenum = true;
					}
					else{
					document.all.rolename.innerHTML="<font color='#F0251E'>&nbsp;"+(json.message)+"</font>";
					usernamenum = false;
					}		
				}
			});
		}


}


function comit(){
	var one=document.all.pwd.value;
	var two=document.all.newpwd.value;
 if(one==two&&limitLen(one,3,15)&&limitLen(two,3,15)&&usernamenum==true){ 
 
 return true;
 }
  else{
  
  return false;
  }
}
</script>

  </head>
  
  <body class="MyTABLE">
    <s:form action="addadmin.shtml" method="post" onsubmit="return comit();">
			<table border="1" align="center">
				<caption>
					<h1>
						角色权限
					</h1>
				</caption>
					<tr>
					<td>
						角&nbsp;色&nbsp;名
					</td>
					<td>
						<input  maxlength="30" name="rolename" id="rolename"
						  class="enter" onblur="checkrolename();"></input>
					<span id="rolename"></span>
					</td>
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
