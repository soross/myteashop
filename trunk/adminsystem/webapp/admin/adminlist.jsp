<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
  <head>
  <script type="text/javascript">
   function addToAdmin(){
   
       window.location.href = "addtoadmin";
   }
   function adminLogout(){
   
       window.location.href = "adminlogout";
   }
  </script>
  <title>管理员列表</title>
  </head>
  <body background="share/images/background.jpg">
  <center>
    <h2>管理员管理</h2>
    欢迎<s:property value="%{#session.loginName}"/>,进入管理界面
    <br>
    <input type="button" name="addToAdmin" value="新增" onclick="javascript:addToAdmin();">
    <input type="button" name="adminLogout" value="退出" onclick="javascript:adminLogout();">
   <table border="1">
     <tr>
       <th>用户名</th> 
       <th>密码</th>
       <th>操作</th>
     </tr> 
 
     <s:iterator value="adminList">
	    <tr>
	      <td><s:property value="adminName"/></td>
	      <td><s:property value="adminPassword"/></td>
	      <td>
	       <a href="deleteadmin?adminId=<s:property value='adminId'/>">删除</a>
	       <a href="edittoadmin?adminId=<s:property value='adminId'/>">编辑</a>
	       </td>
	    </tr>
    </s:iterator>
   </table>
  </center>
  </body>
</html>
