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
    
    <title>�鿴��ͼ</title>

  </head>
  
  <body><!--startprint-->
    <table>
    	<tr>
    		<td align="right"><input type="button" value="�ر�" onclick="window.close();"/>&nbsp;<input type="button" value="��ӡ" onclick="preview();"/></td>
    	</tr>
    	<tr>
    		<td>
    			<table width="100%">
    				<tr>
    					<td>ҽ��֤�ţ�</td>
    					<td>������</td>
    					<td>���䣺</td>
    					<td>�Ա�</td>
    					<td>������ڣ�</td>
    				</tr>
    				<tr>
    					<td colspan="5">��Ͻ����</td>
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
