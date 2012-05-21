<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>新增管理员</title>
    <script type="text/javascript">
      function addAdmin(){
         document.all.addAdminForm.action = "addadmin";
      }
    </script>
  </head>
  <body background="share/images/background.jpg">
  <center>
    <h2>新增管理员</h2>
     欢迎<s:property value="%{#session.loginName}"/>,进入增加管理员界面
      <form name="addAdminForm" method="post">
       <table>
          <tr>
          <td>用户名:</td>
	      <td><input type="text" name="adminName" ></input></td>
	      </tr>
	      <tr>
	      <td>密码:</td>
	      <td><input type="text" name="adminPassword" ></input></td>
	      </tr>
	      <tr>
	      <td  align="center">
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="submit" name="addadmin" value="保存"  onclick="javascript:addAdmin();"></input>
	     </td>
	     <td  align="center">
	     <input type="reset" name="reset" value="重置"></input>
	     </td>
	     </tr>
	   </table>
    </form>
   </center>
  </body>
</html>
