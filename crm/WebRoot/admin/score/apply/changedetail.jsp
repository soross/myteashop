<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="jn0904" uri="/jn0904"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>兑换详情列表</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/win.js"></script>
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
      function pback(id){
        var num = document.getElementById("b"+id).value;
        if(num==""){
           showMsg("请输入要回退的数量！");
           return;
        }
        var back = document.getElementById(id).value;
        if(back==0){
           showMsg("当前可回退数为0！");
           return;
        }
        if(num>back){
           showMsg("最多只能回退"+back+"件！");
           return;
        }
        location.href="${pageContext.request.contextPath}/admin/score.do?task=doBack&itemId="+id+"&count="+num;
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
                <td width="50%" class="STYLE1">当前位置：[积分消费]-[兑换详情]</td>
                <td width="30%" ></td>
              </tr>
            </table>
           </td>
            <td width="54%">
            <table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="600">
                <table width="90%" border="0" cellpadding="0" cellspacing="0">           
                  <tr>
                    <td class="STYLE1"><div align="center">当前客户: ${client.phone}</div></td>
                    <td class="STYLE1"><div align="center">累计积分：${totalScore.total}</div></td>
                    <td class="STYLE1"><div align="center">剩余积分：${totalScore.vintegral}</div></td>
          
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
               &nbsp;
            </td>
            <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_15.gif">&nbsp;</td>
         </tr>
       </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${pageContext.request.contextPath}/admin/images/tab_12.gif">&nbsp;</td>
        <td>
      
          <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
             <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">兑换编号</span></div></td>
             <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">客户号码</span></div></td>
            <td width="10%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">礼品名</span></div></td>
            <td width="12%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">效果图</span></div></td>
            <td width="7%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">礼品数量</span></div></td>
            <td width="7%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">所需积分</span></div></td>
            <td width="7%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可回退数</span></div></td>
            <td width="7%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">回退数</span></div></td>
            <td width="14%" height="22" background="${pageContext.request.contextPath}/admin/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">基本操作</span></div></td>
          </tr>
          <logic:present name="change">
          <logic:empty name="change">
              <tr>
                 <td height="20" bgcolor="#FFFFFF" colspan="7"> 暂无任何兑换记录！</td>
              </tr>
          </logic:empty>
          <logic:iterate id="item" name="change" property="items">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change.id}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${change.phone } </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${item.pname }</span></div></td>
            <td bgcolor="#FFFFFF" height="50" align="center">
            <div align="center">
            <span class="STYLE1">
               <logic:empty  property="picture" name="item" >
                  <img id="previewImg" src="${pageContext.request.contextPath}/images/I3GWAY9WYB_104_120_120.gif" style="cursor: hand;width:80px;height:50px" onclick="window.open(this.src);"  alt="点击查看大图"/>
                </logic:empty>
                <logic:notEmpty property="picture" name="item" >
                 <img id="previewImg" src="${pageContext.request.contextPath}/admin/upload/${item.picture}" style="cursor: hand;width:80px;height:50px" onclick="window.open(this.src);"  alt="点击查看大图"/>
                </logic:notEmpty>
            </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${item.changenum }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${item.score}</span></div></td>
             <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${item.backnum}</span></div></td>
             <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
                <input id="b${item.id}" type="text" style="width:30px;height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"/>
                <input id="${item.id}" type="hidden" value="${item.backnum}">
                </span></div></td>
            <td bgcolor="#FFFFFF" align="center" class="STYLE1">      
                     <a href="javascript:pback('${item.id}');">[回 退]</a>

            </td>
          </tr>
          </logic:iterate>
          </logic:present>
        </table>
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
                  <td width="500" class="STYLE4">    
                                                      
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
