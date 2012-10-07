<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
  <head>
    <html:base />
    
    <title>查看大图</title>

  </head>
  
  <body><!--startprint-->
    <table>
    	<tr>
    		<td align="right"><input type="button" value="关闭" onclick="window.close();"/>&nbsp;<input type="button" value="打印" onclick="preview();"/></td>
    	</tr>
    	<tr>
    		<td>
    			<table width="100%">
    				<tr>
    					<td>医疗证号：</td>
    					<td>姓名：</td>
    					<td>年龄：</td>
    					<td>性别：</td>
    					<td>诊断日期：</td>
    				</tr>
    				<tr>
    					<td colspan="5">诊断结果：</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	<tr>
    		<td><img src="${pageContext.request.contextPath}/admin/upload/${path}" width="770px" height="480"></td>
    	</tr>
    </table><!--endprint-->
  </body>
  
  <script language="javascript">
function preview()
{
bdhtml=window.document.body.innerHTML;
sprnstr="<!--startprint-->";
eprnstr="<!--endprint-->";
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
window.document.body.innerHTML=prnhtml;
window.print();
}
</script>
</html:html>
