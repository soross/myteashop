<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改数字字典</title>

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
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE5 {font-size: 14px;color:}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}	
		
		function checkName(){
			var name = document.getElementById("dataName").value;
			if(name.length==0){
				alert("请输入数字字典名称");
				return false;
			}else{
				return true;
			}
		}
		
		function check(){
			if(document.getElementById("temp").value=="行业、操作类型使用"){
				document.getElementById("temp").value="";
			}
			return checkName();
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
                <td width="90%" class="STYLE1">当前位置：数字字典修改</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                   <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/admin/data.do?task=toAddData"><img src="${pageContext.request.contextPath}/admin/images/22.gif" width="14" height="14" border="0"/></a></div></td>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/admin/data.do?task=toAddData">新增</a></div></td>
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
              		修改数字字典
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/data" onsubmit="return check();">
	            	<table>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1" align="center">数字字典名</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:text property="dataName"></html:text> </td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1" align="center" >父&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	            			<td height="20" bgcolor="#FFFFFF">
	            				<html:select property="pid">
	            					<html:option value="0">==请选择==</html:option>
	            					<logic:present name="pidList">
	            						<logic:iterate id="data" name="pidList">	            							
	            								<html:option value="${data.id}">${data.name}</html:option>	            							
	            						</logic:iterate>
	            					</logic:present>
	            					
	            				</html:select>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" class="STYLE1"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用</td>
	            			<td height="20" bgcolor="#FFFFFF"><html:text property="temp" value="行业、操作类型使用" onfocus="clearText(this)" maxlength=""></html:text></td>
	            		</tr>
	            		<tr>
	            			<td height="20" bgcolor="#FFFFFF" align="right"><html:reset value="重置"></html:reset></td>
	            			<td height="20" bgcolor="#FFFFFF">&nbsp;&nbsp;
	            				<input type="hidden" name="task" id="task" value="addData">
	            				<html:hidden property="id"/>
	            				<html:submit value="修改"></html:submit>
	            			</td>
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
                  <td width="40"></td>
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
