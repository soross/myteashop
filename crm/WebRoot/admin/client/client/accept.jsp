<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="jn0904" uri="/jn0904"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>客户接收列表</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/win.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
	<style type="text/css">
	<!--
	a{text-decoration: none}     
         text{
           width:100px;
           height:20px;
         }
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE3 {font-size: 14px;}
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
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
	</script>
	
	<script type="text/javascript">
	
	 function checkBox(box){
     var flag=false;
     var chks=document.getElementsByName("child");
     if(box.id=="all" && box.checked){//如果选中全选,则所有的复选框都选中
        for(var i=0;i<chks.length;i++){
            chks[i].checked=true;
        }
     } 
     
     if(box.id=="all"&&box.checked==false){ //父类没选中，子类也不选
        for(var i=0;i<chks.length;i++){
            chks[i].checked=false;
        }
     }
     
     if(box.id!="all"&&box.checked==true){ //子类选中,父类选中
        document.getElementById("all").checked=true;
     }
     
     if(box.id!="all"&&box.checked==false){//子类都没选中，父类不选
        for(var i=0;i<chks.length;i++){
            if(chks[i].checked){
              flag=true;
            }
        }
        if(!flag){
          document.getElementById("all").checked=false;
        }     
     }           
   }
   
    function sub(task){//客户接收
        var ids="";
        var phones="";
        var chks=document.getElementsByName("child");
        for(var i=0;i<chks.length;i++){
         if(chks[i].checked){
             if(ids==""){
               var aa = chks[i].value;
               var str = aa.split(",");
               ids="ids="+str[1];
               phones="phones="+str[0];
             }else{
               var str = chks[i].value.split(",");
               ids+="&ids="+str[1];
               phones+="&phones="+str[0];
             }
         }
       } 
       
         if(ids==""){
             
              showMsg("未选中任何项");
              return;
         }
         
        if(task=="accept"){
          location.href="${pageContext.request.contextPath}/admin/client.do?task=accept&"+ids+"&"+phones;
        }else{
          location.href="${pageContext.request.contextPath}/admin/client.do?task=refuse&"+ids;
         }
        
      }
      
    
</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/images/tab_05.gif">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${pageContext.request.contextPath}/admin/images/tab_03.gif" width="12" height="30" /></td>
        <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%" class="STYLE1">当前位置：客户确认接收列表</td>
                <td width="50%" ></td>
              </tr>
            </table>
           </td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="200">
                <table width="90%" border="0" cellpadding="0" cellspacing="0">              
                  <tr>
                   <td class="STYLE1"><div align="center"><input type="checkbox" id="all" onclick="checkBox(this);" /></div></td>
                   <td class="STYLE1">
                    <div >
                        全 选
                    </div>
                     </td>   
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
    <td>
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
            <td align="center" >
             <br>
              <html:form action="/admin/client?task=distributeList">
                  <table width="750"  class="STYLE4" cellpadding="0" cellspacing="0" style="vertical-align: middle">
                     <tr>
                       <td align="right">手机号码：</td>
                       <td><html:text property="phone"></html:text>(模糊查找)</td>
                       <td align="right">分配时间：</td>
                       <td><html:text property="start" readonly="true"
									 onclick="setDay(this);"></html:text></td>
                       <td align="right" width="10">至：</td>
                       <td><html:text property="end" readonly="true"
									 onclick="setDay(this);"></html:text></td>
                       <td><html:submit value="查 询"></html:submit></td>
                      </tr>
                  </table>
               </html:form>
            </td>
            <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif">&nbsp;</td>
         </tr>
       </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td>
               <br>
          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td width="1%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              &nbsp;
            </div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">手机号码</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">分配者</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">状态</span></div></td>
            <td width="6%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">分配时间</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">分配经理</span></div></td>
          </tr>
          <logic:present name="acceptList">
          <logic:empty name="acceptList">
              <tr>
                 <td height="20" bgcolor="#FFFFFF" colspan="6" align="center" class="STYLE1"> 暂无任何数据！</td>
              </tr>
          </logic:empty>
          <logic:notEmpty name="acceptList">
          <logic:iterate id="accept" name="acceptList" >
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" id="child" name="child" value="${accept.phone},${accept.id}" onclick="checkBox(this);"/>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${accept.phone}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${accept.userid } </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center">
            <span class="STYLE1">
             <logic:equal value="0" name="accept" property="state">
                 待确认
             </logic:equal>
             <logic:equal value="1" name="accept" property="state">
                 已接收
             </logic:equal>
             <logic:equal value="2" name="accept" property="state">
                 被拒收
             </logic:equal>
            </span></div></td>
            <td bgcolor="#FFFFFF">
            <div align="center">
             <span class="STYLE1">
                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${accept.fdate}"/>
                </span>
            </div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${accept.manager } </span></div></td>
          </tr>
          </logic:iterate>
          <tr>
            <td bgcolor="#FFFFFF" colspan="6">
              <html:button property="" value="确认接收" onclick="sub('accept');" ></html:button>
              <html:button property="" value="拒  收" onclick="sub('refuse');"></html:button>
             </td>
          </tr>
          </logic:notEmpty>
          </logic:present>
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
                  <td width="500" class="STYLE4">    
                    <jn0904:page name="pageUtil"/></td>                                    
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
