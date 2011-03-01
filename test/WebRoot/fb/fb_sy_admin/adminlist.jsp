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
    
    <title>My JSP 'adminlist.jsp' starting page</title>
    
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
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}

.STYLE12 {
	color: #1E90FF;
	font-size: 16px;
}

.STYLE2 {
	font-size: 12px;
	color: #CC0000;
	font-family: "新宋体";
}
-->
</style>

  </head>
  
  <body>
   <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"> <img src="<%=request.getContextPath() %>/images/cr/frame/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> 用户列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
             <img src="<%=request.getContextPath() %>/images/cr/frame/add.gif" width="10" height="10" /> 
             <a href="<%=request.getContextPath() %>/tuser.do?task=showadduser" style="color: white;text-decoration: none;">添加用户</a>   </span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
   <tr>
     <td>
    
    111
    
    
   <div style="margin-top: 12px; margin-bottom: 10px;" align="center" class="STYLE6">用户账号：
   </div>  
     11111
    
     
     <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
    <tr>
    <td width="10%" height="30" bgcolor="d3eaef" class="STYLE6" align="center">用户编号</td>
    <td width="10%"  bgcolor="d3eaef" class="STYLE6" align="center">真实姓名</td>
    <td width="10%"  bgcolor="d3eaef" class="STYLE6" align="center">性别</td>
    <td width="15%"  bgcolor="d3eaef" class="STYLE6" align="center">工号</td>
    <td width="20%"  bgcolor="d3eaef" class="STYLE6" align="center">地址</td>
    <td width="10%"  bgcolor="d3eaef" class="STYLE6" align="center">用户状态</td>
    <td width="20%" bgcolor="d3eaef" class="STYLE6" align="center">操作</td>
    </tr>
   
     <tr>
       <td height="20"  bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">111</td>
       <td bgcolor="#FFFFFF" class="STYLE6" align="center">1111<td>   
     </tr>
     </table>
 
 </td></tr></table>
  </body>
</html>
