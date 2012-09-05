<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>角色添加</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/win.js"></script>
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
	</script>
    <script type="text/javascript">
      function child(parent){   
        var pid=parent.value;
        var chks=document.getElementsByName("menus");
        for(var i=0;i<chks.length;i++){
         if(parent.checked==true){//如果父类选中,则所有子类全部选中
            if(chks[i].id==pid){
              chks[i].checked=true;
            }
         }else{
            if(chks[i].id==pid){
              chks[i].checked=false;
            }
         }
      }   
    }
    
    function parent(child){
      var pid=child.id;//获取父类ID
      var chks=document.getElementsByName("menus");
      var flag=false;
      if(child.checked==true){//如果选中子类,则父类也选中
         for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=true;
               flag=true;
            }
         }
      }else{
         for(var i=0;i<chks.length;i++){
            if(chks[i].checked==true&& chks[i].id==pid){
               flag=true;
               break;
            }
         }
      }
      if(!flag){
        for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=false;
            }
         }
      }  
    }
    
    
    
    function subAdd(task){
       var rolename = document.getElementById("rname").value;
       if(rolename==""){
          showMsg("角色名称不能为空！");
          return;
       }
       
       var chks=document.getElementsByName("menus");
       var flag=false;
       for(var i=0;i<chks.length;i++){
          if(chks[i].checked){
             flag=true;
             break;
          }
        
       }      
       if(!flag){
          showMsg("请分配相应的权限！");
          return;
       }
    
       document.all.item("task").value=task;
       roleForm.submit();
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
                <td width="50%" class="STYLE1">
                  <logic:equal value="doAdd" parameter="task">
                         当前位置：角色添加
                  </logic:equal>
                  <logic:equal value="doUpdate" parameter="task">
                         当前位置：角色修改
                  </logic:equal>
                </td>
                <td width="50%" ></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/admin/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td>
        <html:form action="admin/role">
         <html:hidden property="roleid"/>
         <input type="hidden" name="task">
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" class="STYLE1">
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">角色名称： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="rolename" styleId="rname"></html:text>
              </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">角色描述： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="descript"></html:text>
              </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">角色权限： </td>
             <td bgcolor="#FFFFFF" >
                <logic:present name="powerList">
                   <logic:iterate id="power" name="powerList">
                       <logic:equal value="0" property="parentid" name="power">
                           <html:multibox property="menus" value="${power.id}" onclick="child(this);" styleId="${power.parentid}"></html:multibox>${power.powername}<br>
                       </logic:equal>
                       <logic:present name="powerList">
                             <logic:iterate id="power1" name="powerList">
                               <logic:equal value="${power.id}" property="parentid" name="power1">
                                  &nbsp;&nbsp;&nbsp;&nbsp;<html:multibox property="menus" value="${power1.id}" styleId="${power1.parentid}" onclick="parent(this);"></html:multibox>${power1.powername}<br>
                               </logic:equal>
                             </logic:iterate>
                           </logic:present>
                   </logic:iterate>
                </logic:present>
              </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">操 作： </td>
             <td bgcolor="#FFFFFF" >
               <logic:equal value="doAdd" parameter="task">
                  <html:button property="" value="添 加" onclick="subAdd('addRole');"></html:button>
                </logic:equal>
                <logic:equal value="doUpdate" parameter="task">
                  <input type="hidden" name="tempCurrentpage"
										value="${param.currentpage}" />
									<input type="hidden" name="tempRoleName"
										value="${param.rolename}" />
                  <html:button property="" value="修 改" onclick="subAdd('updateRole');"></html:button>
                </logic:equal>
              </td>
          </tr>
        </table>
        </html:form>
    </td>
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
