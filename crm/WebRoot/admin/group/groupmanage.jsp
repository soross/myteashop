<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>集团管理界面</title>

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
	.STYLE2 {font-size: 18px}
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	.STYLE2 {
	    font-weight: bold;
		color: #03515d;
		font-size: 12px;
	}
.STYLE5 {
	font-size: 14px;
	font-weight: bold;
	color: #000033;
}
	-->
	</style>
	


	<script>
		var  highlightcolor='#c1ebff';
		//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
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
		function del(groupid){
        if(confirm("确定删除该集团吗?")){
            var url="${pageContext.request.contextPath}/admin/group.do?task=deleteGroup&id="+groupid ;
            
                location.href=url;
          }
      }
         
         function out(ta){
          document.all.item("task").value=ta;
          if(ta=="searchGroup"){
             groupForm.submit();
          }else{
          var sel=document.getElementsByName("sel");
          var s=false
          for(var i=0;i<sel.length;i++){
            if(sel[i].checked==true){
              s=true;
            }
          }
          if(!s){
            if(confirm("如果未选择集团,默认导出您负责的所有集团,确定导出吗?")){    
             groupForm.submit();
            }
          }
          else{
           groupForm.submit();
          } 
         }
       }
         function level(ta){
          document.all.item("task").value=ta;
          var sel=document.getElementsByName("sel");
          var s=false
          for(var i=0;i<sel.length;i++){
            if(sel[i].checked==true){
              s=true;
            }
          }
          if(!s){
            alert("请选择要分级的集团!");
          }
          else{
           groupForm.submit();
          } 
        }
         
	</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="87">
        <img src="${pageContext.request.contextPath}/admin/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="40%" valign="middle">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10%" height="23">&nbsp;</td>
                <td width="30%" class="STYLE1"><span class="STYLE5">集团管理</span></td>
                <td width="30%" class="STYLE1"><span class="STYLE2"><a href="javascript: out('outExcel');">导出集团</a>&nbsp;&nbsp;
                <a href="${pageContext.request.contextPath }/admin/group/importexcel.jsp" target="rightframe">导入集团</a></span></td>
               
               
              </tr>
            </table></td>
            <td width="30%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/admin/images/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><html:link action="/admin/group?task=addJsp">新增</html:link></div></td>
                   
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
        <td>         
            <html:form action="/admin/group">
            <input type="hidden" name="task"/>
			<table width="100%">
			<tr>
			<td class="STYLE2" width="12%" align="right">集团名称：</td>
			<td class="STYLE2" width="16%" align="left"><html:text property="groupname"/></td>
			<td class="STYLE2" width="11%" align="right">所属行业：</td>
			<td class="STYLE2" width="20%" align="left">
			<logic:present name="datalist">
	            			<logic:notEmpty name="datalist">
	            			<html:select property="vocation">
	            			<html:option value="">==请选择==</html:option>
	            			<html:options collection="datalist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present>
			</td>
			
			<td width="14%" align="center">
			 <html:button property="" value=" 查 询" onclick="out('searchGroup');"></html:button>
			 </td>
			</tr>
			</table>
			
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td width="4%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center">
             
            </div></td>
            
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">企业名称</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">客户经理</span></div></td>
            <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">所属行业</span></div></td>
            <td width="10%" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">企业级别</span></div></td>
            <td width="10%" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">联系人操作</span></div></td>
            <td width="20%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">审核操作</span></div></td>
            <td width="16%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
          <logic:present name="grouplist">
          <logic:empty name="grouplist">
          <tr><td colspan="8" align="center">暂无集团</td></tr>
          </logic:empty>
          <logic:notEmpty name="grouplist">
          <logic:iterate id="group" name="grouplist">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
               <html:multibox property="sel" value="${group.groupid}"></html:multibox>
            </div></td>
            
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${group.groupname}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" ><span class="STYLE1">${group.manager}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${group.vocation }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${group.grouplevel }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><html:link action="/admin/group?task=addOrUpdate&id=${group.groupid}&sta=3">联系人 </html:link></span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">&nbsp; &nbsp;
            
            <logic:present name="ma">
            <logic:equal value="0" name="ma">
               <html:link action="/admin/group?task=checkGroup&id=${group.groupid}&sta=${group.state }">审核通过 </html:link>
              &nbsp; &nbsp; <html:link action="/admin/group?task=checkGroup&id=${group.groupid}&sta=3">审核废弃 </html:link>
            </logic:equal>
            <logic:equal value="1" name="ma">
               <html:link action="/admin/group?task=checkGroup&id=${group.groupid}&sta=${group.state }">转正</html:link>
            </logic:equal>
            <logic:equal value="2" name="ma">
                <logic:notEqual value="4" name="group" property="state">
               <html:link action="/admin/group?task=checkGroup&id=${group.groupid}&sta=${group.state }">注销</html:link>
                </logic:notEqual>
            </logic:equal>
            </logic:present>
               
           &nbsp; &nbsp;</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">  
            <logic:notEqual value="4" name="group" property="state">
            <img src="${pageContext.request.contextPath}/admin/images/edt.gif" width="16" height="16" />
            <html:link action="/admin/group?task=updateJsp&id=${group.groupid}">修改</html:link>&nbsp; &nbsp;
            </logic:notEqual>
            <img src="${pageContext.request.contextPath}/admin/images/del.gif" width="16" height="16" /> 
            <a href="javascript:del('${group.groupid}');"> 删 除</a>
             
             </span></div></td>
          </tr>
          </logic:iterate>
          </logic:notEmpty>
         </logic:present> 
         
        </table>
         </html:form>
        </td>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif"></td>
      </tr>
    </table>
   
    </td>
  </tr>
  <tr><td>&nbsp;&nbsp;&nbsp;
  <logic:present name="ma" >
             <logic:notEqual value="0" name="ma">
                <html:button property="" value=" 集团分级 " onclick="level('levelJsp');"></html:button>
            </logic:notEqual>
   </logic:present> 
 </td></tr>
  <tr>
    <td height="35" background="${pageContext.request.contextPath}/admin/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="${pageContext.request.contextPath}/main/admin/images/tab_18.gif" width="12" height="35" /></td>
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
                <tr><td class="STYLE1"><page:page name="pageUtil"/></td></tr>
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
