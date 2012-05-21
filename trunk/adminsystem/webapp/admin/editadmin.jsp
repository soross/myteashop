<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
  <head>
    <title>修改管理员</title>
  </head>
  <body background="share/images/background.jpg">
    <center>
     <h2>修改管理员</h2>
     欢迎<s:property value="%{#session.loginName}"/>,进入修改管理员信息界面
     <form action="editadmin">
       <table>
          <tr>
          <td>用户名:</td>
	      <td><input type="text" name="adminName" value="${admin.adminName}"></input></td>
	      </tr>
	      <tr>
	      <td>密码:</td>
	      <td><input type="text" name="adminPassword" value="${admin.adminPassword}"></input></td>
	      </tr>
	      <tr>
	      <td  align="center">
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="submit" name="editadmin" value="修改"></input>
	     </td>
	     <td  align="center">
	     <input type="reset" name="reset" value="重置"></input>
	     </td>
	     </tr>
	   </table>
	    <input type="hidden" name="adminId" value="${admin.adminId}"/>
    </form>
    </center>
  </body>
</html>
