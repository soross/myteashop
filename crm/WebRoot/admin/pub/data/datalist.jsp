<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<jsp:directive.page import="com.ibatis.sqlmap.engine.scope.RequestScope"/>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�м���ҳ��</title>

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
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>

	<script>
		var  highlightcolor='#c1ebff';
		//�˴�clickcolorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
		var  clickcolor='#51b2f6';
		function  changeto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=highlightcolor;
			}
		}
		
		function  changeback(){
			if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
			return
			if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
			//source.style.backgroundColor=originalcolor
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		function  clickto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=clickcolor;
			}
			else
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		
		function showSonData(temp){			
  
		  var   allNode   =   document.all;   
		  for (var   i=0;   i<allNode.length;   i++) {  
		  	if  (allNode[i].id   ==   temp)
		  	
		  		if(allNode[i].style.display=="none"){
		  			allNode[i].style.display="block";
		  		}else{
		  			allNode[i].style.display="none";
		  		}
 			}	
		}
	</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${pageContext.request.contextPath}/admin/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>               
                <td width="90%" class="STYLE1">��ǰλ�ã������ֵ��б�</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/admin/data.do?task=toAddData"><img src="${pageContext.request.contextPath}/admin/images/22.gif" width="14" height="14" border="0"/></a></div></td>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/admin/data.do?task=toAddData">����</a></div></td>
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
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
           
            <td colspan="1" width="7%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ID</span></div></td>
            <td colspan="1" width="30%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">�����ֵ���</span></div></td>
            <td colspan="1" width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">����ID</span></div></td>
            <td colspan="1" width="25%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">����</span></div></td>
            <td colspan="2" width="25%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">����</span></div></td>
          </tr>
          <logic:present name="dataList">
          	<logic:iterate id="data" name="dataList">
          	  <logic:equal value="0" name="data" property="pid">
	          <tr style="cursor: hand;">	            
	            <td height="20" bgcolor="#FFFFFF"  onclick="showSonData('${data.id}')"><div align="center"><span class="STYLE1"><b>${data.id}</b>&nbsp;&nbsp;</span></div></td>
	            <td bgcolor="#FFFFFF"  onclick="showSonData('${data.id}')"><div align="center"><span class="STYLE1"><b>${data.name}</b></span></div></td>
	            <td colspan="1" height="20" bgcolor="#FFFFFF"  onclick="showSonData('${data.id}')"><div align="center"><span class="STYLE1">&nbsp;</span></div></td>
	            <td colspan="1" height="20" bgcolor="#FFFFFF"  onclick="showSonData('${data.id}')"><div align="center"><span class="STYLE1"><b>${data.trade}</b></span></div></td>
	            <td colspan="2" height="20" bgcolor="#FFFFFF" style="cursor:default;"><div align="center"><span class="STYLE4">
	            	<a href="${pageContext.request.contextPath}/admin/data.do?task=toUpdateData&id=${data.id}"><img src="${pageContext.request.contextPath}/admin/images/edt.gif" width="16" height="16" border="0"/>�༭</a>&nbsp; &nbsp;
	            	<a href="${pageContext.request.contextPath}/admin/data.do?task=deleteData&id=${data.id}"><img src="${pageContext.request.contextPath}/admin/images/del.gif" width="16" height="16" border="0"/>ɾ��</a></span></div></td>
	          </tr>
	          <logic:iterate id="sonData" name="dataSonList">
	          	<logic:equal value="${data.id}" name="sonData" property="pid">
	          	
	          		  <tr id="${data.id}" style="display: none;">
			           
			            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">&nbsp;&nbsp;${sonData.id}</span></div></td>
			            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${sonData.name}</span></div></td>
			            <td colspan="1" height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${data.name}</span></div></td>
			            <td colspan="1" height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${sonData.trade}</span></div></td>
			            <td colspan="2" height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">
			            	<a href="${pageContext.request.contextPath}/admin/data.do?task=toUpdateData&id=${sonData.id}"><img src="${pageContext.request.contextPath}/admin/images/edt.gif" width="16" height="16" border="0"/>�༭</a>&nbsp; &nbsp;
			            	<a href="${pageContext.request.contextPath}/admin/data.do?task=deleteData&id=${sonData.id}"><img src="${pageContext.request.contextPath}/admin/images/del.gif" width="16" height="16"  border="0"/>ɾ��</a></span></div></td>
			          </tr>	
			             		
	          	</logic:equal>
	          </logic:iterate>
	          </logic:equal>
	          </logic:iterate>
          </logic:present>
          <!-- trade -->
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
            <td class="STYLE4" align="right">
            </td>
            <td><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>                 
                  <td class="STYLE1" align="center">
                  	<page:page name="pageUtil"/>					
                  </td>                 
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