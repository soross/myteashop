<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>审核联盟商家</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/prototype.js"></script>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE7 {font-size: 18px;color: #FF0033;}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	.STYLE5 {
	font-size: 18px;
	font-weight: bold;
	color: #83D2F1;
}
.STYLE6 {
	font-size: 24px;
	font-weight: bold;
	color: #30BAF5;
}
	-->
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function check(check){
		 document.getElementById("ischeck").value=check
  		unionForm.submit();
		}
		
  function returns(){
   history.back();
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
                <td width="10%"></td>
                <td width="90%" class="STYLE1"></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td >&nbsp;</td>
                <td >&nbsp;</td>
                <td >&nbsp; </td>
                <td class="STYLE1"></td>
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
            	<div align="center" class="STYLE6"><b>
              		审核联盟商家
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/union" >
            	<input type="hidden" name="task" value="checkUnion">
            	<html:hidden property="unionbId"/>
            	<html:hidden property="islogout"/>
            	<html:hidden property="ischeck"/>
            	<html:hidden property="level"/>
	            	<table width="100%">
	            	    <tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF"  align="right">商家名称:</td>
	            			<td  colspan="2" height="40"   bgcolor="#FFFFFF">${union.fullName }</td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">商家简称：</td>
	            			<td colspan="2" height="40" bgcolor="#FFFFFF">${union.shortName }</td>
	            		</tr>
	            		
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">类型：</td>
	            			<td  colspan="2" height="40" bgcolor="#FFFFFF">${type.name }</td>
	            			
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">性质：</td>
	            			<td  colspan="2" height="40" bgcolor="#FFFFFF">${vo.name }
	            			
	            			</td>
	            			
	            		</tr>
	            		
	            		<tr>
	            			<td class="STYLE5"  colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >经营状况：</td>
	            			<td   colspan="2" height="40" bgcolor="#FFFFFF">${state.name }
	            			
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1"  align="right">员工数量：</td>
	            			<td  colspan="2" height="40" bgcolor="#FFFFFF">${union.empCount }
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">注册资金:</td>
	            			<td  colspan="2" height="40"  bgcolor="#FFFFFF">${union.regmoney }￥
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">商家级别:</td>
	            			<td  colspan="2" height="40"  bgcolor="#FFFFFF">${lev.name }
	            			</td>
	            		    </tr>
	            			
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">商家地址:</td>
	            			<td colspan="2" height="40"  bgcolor="#FFFFFF">${union.unionbAddr }</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">法人:</td>
	            			<td  colspan="2" height="40"  bgcolor="#FFFFFF">${union.corporation }</td>
	            		</tr>	
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">联系人:</td>
	            			<td colspan="2" height="40"  bgcolor="#FFFFFF">${union.linkman }</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">性别:</td>
	            			<td class="STYLE5" colspan="2" height="40"  bgcolor="#FFFFFF">
	            			<html:radio property="corSex" value="0">男</html:radio>
					        <html:radio property="corSex" value="1">女</html:radio>
					        </td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">职位：</td>
	            			<td  colspan="2" height="40"  bgcolor="#FFFFFF">${union.corJobs }</td>
	            			</tr>
	            			
	            			
	            	
	            		
	            		<tr>
	            			<td height="40" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="40" bgcolor="#FFFFFF" class="STYLE1" align="center">
	            			<html:button property="" value=" 审核不通过 " onclick="check('2');"></html:button>
	            			</td>
	            			<td height="40" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value=" 审核通过 " onclick="check('1');"></html:button>
	            			</td>
	            			<td height="40" bgcolor="#FFFFFF"><html:button property="" value=" 返回 " onclick="returns();"></html:button></td>
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
                  <td width="40">&nbsp;</td>
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

  
