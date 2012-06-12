<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>MyJsp.jsp</title>

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
.STYLE2 {
	font-size: 18px;
	font-weight: bold;
	color: #41CDF5;
}
.STYLE3 {
	font-size: 14px;
	font-weight: bold;
}
-->
    </style>
    <script type="text/javascript">
    function subPath(){
    var path=document.getElementById("fext").value;
    
    var lasts = path.substr(path.lastIndexOf("."));

		if (lasts!=".xls"){
			
			alert('请选择Excel文件');
		}
        else{
           groupForm.submit();
         }
    }
    </script>
  </head>
  
  <body>
  <html:form action="/admin/group" enctype="multipart/form-data">
  <input type="hidden" name="task" value="inExcel"/>
  <html:hidden property="files"/>
    <table width="537" height="122" border="0" align="center">
  <tr>
    <td height="23" colspan="2"><span class="STYLE2">选择导入的文件</span></td>
    </tr>
  <tr>
    <td width="99" height="45"><span class="STYLE3">文件路径:</span></td>
    <td width="428"><html:file property="files" styleId="fext"></html:file></td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td><html:reset value="重置"></html:reset></td>
    <td><html:button property="" value="确定" onclick="subPath();"></html:button></td>
  </tr>
</table>
</html:form>
    
  </body>
</html:html>
