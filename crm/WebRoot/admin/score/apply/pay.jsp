<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

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

	<title>积分消费查询</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
                <td width="50%" class="STYLE1">当前位置：积分消费查询</td>
                <td width="50%" ></td>
              </tr>
            </table>
           </td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="220">
                  &nbsp;
                </td>    
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
               <html:form action="/admin/score?task=searchChange">
                  <table width="600"  class="STYLE4" cellpadding="0" cellspacing="0" style="vertical-align: middle">
                     <tr>
                       <td align="right">手机号：</td>
                       <td><html:text property="phone" style="width:100px;heght:20px"></html:text></td>
                       <td align="right">礼品名：</td>
                       <td><html:text property="pname" style="width:80px;heght:20px"></html:text></td>
                        <td align="right">消费积分：</td>
                       <td><html:text property="tostart" style="width:60px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
                        <td align="center" style="width:10px">至</td>
                       <td><html:text property="toend" style="width:60px" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text></td>
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
          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
           <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">流水号</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">手机号码</span></div></td>
            <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">礼品名</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">兑换礼品积分</span></div></td>
            <td width="8%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">兑换个数</span></div></td>
            <td width="8%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">已回退数</span></div></td>
          <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">兑换总积分</span></div></td>
          <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">兑换时间</span></div></td>
         <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">操作人</span></div></td>
          </tr>
          <logic:present name="changeList">
          <logic:empty name="changeList">
              <tr>
                 <td height="20" bgcolor="#FFFFFF" colspan="9" align="center" class="STYLE1"> 暂无任何记录！</td>
              </tr>
          </logic:empty>
          <logic:iterate id="change" name="changeList" >
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[0].id}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[0].phone} </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[1].pname }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[1].score }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[1].changenum }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[1].changenum-change[1].backnum-1}</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[1].changenum*change[1].score }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${change[0].cdate}"/>
            </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change[0].operater}</span></div></td>
          </tr>
          </logic:iterate>
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
