<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>礼品添加</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE3 {font-size: 12px; color:red}
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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
    <script type="text/javascript">
        function checkName(){
          var pname = document.getElementById("pname").value;
          if(pname==""){
             document.getElementById("nmsg").innerHTML="* 礼品名称不为空！";
             return false;
          }
          return true;
        }
        
        function checkNum(){
          var pnum = document.getElementById("pnum").value;
          if(pnum==""){
             document.getElementById("pmsg").innerHTML="* 礼品数量不为空！";
             return false;
          }else if(!/^[0-9]{1,4}$/.test(pnum)){
             document.getElementById("pmsg").innerHTML="* 礼品数量只能4位数字类型！";
             return false;
          }
          return true;
        }
        function checkPic(){
          var pimg = document.getElementById("pimg").value;
          if(pimg != ""){
            if(!/.+(jpg|png|bmp|gif|JPG|GIF)$/.test(pimg)){
                 document.getElementById("imsg").innerHTML="* 礼品图片格式不正确！";
                 return false;
            }
          }
          return true;
        }
        
        function checkScore(){
           var score = document.getElementById("score").value;
           if(score!=""){
             if(!/^[0-9]{1,5}$/.test(score)){
                document.getElementById("smsg").innerHTML="* 积分只能是0-5位数字，且最多保留两位小数点！";
                return false;
             }
           }
           return true;
        }
        
        function checkDate(){
           var startTime=document.getElementById("invalidate").value;  
           if(startTime==""){
              return true;
           }
	        // 得到系统时间并分解
	       var now = new Date() ;
	       var year = now.getFullYear() ;
	       var month = now.getMonth() + 1 ;	     	
	       var day = now.getDate() ;
	       
	       //差值
           var delY=startTime.substring(0,4)-year;
           var delM=startTime.substring(5,7)-month;
           var delD=startTime.substring(8,10)-day;
             
           if(delY>0){
             return true;
           }else if(delY==0&&delM>0){
             return true;
           }else if(delM==0&&delD>0){
             return true;
           }
	      document.getElementById("dmsg").innerHTML="* 有效日期不可早于当前时间！";
          return false;
        }
        
        function sub(){
          if(checkName()&& checkNum()&& checkPic() && checkScore && checkDate()){
             presentForm.submit();
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
                <td width="50%" class="STYLE1">
                         当前位置：礼品添加
                </td>
                <td width="50%" ></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"></td>
                <td width="60">
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
        <td>
        <html:form action="admin/present?task=addPresent" enctype="multipart/form-data">
         
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" class="STYLE1">
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">礼品名称： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="name" styleId="pname"></html:text>
                <span id="nmsg" class="STYLE3"></span>
              </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">礼品数量： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="num" styleId="pnum" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text>
                <span id="pmsg" class="STYLE3"></span>
              </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">效果图： </td>
             <td bgcolor="#FFFFFF" >
                <html:file property="pic" styleId="pimg" onchange="previewImg.src=this.value;" ></html:file>
                 <span id="imsg" class="STYLE3"></span>
             </td>
          </tr>
          <tr>
             <td bgcolor="#FaFaFa" width="100" align="right" >预览： </td>
             <td bgcolor="#FFFFFF" >  
                  <img id="previewImg" src="${pageContext.request.contextPath}/images/I3GWAY9WYB_104_120_120.gif" style="cursor: hand;" onclick="window.open(this.src);" width="150" height="150" alt="点击查看大图"/>
             </td>
          </tr>
           <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">需要积分： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="integral" styleId="score" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text>
                <span id="smsg" class="STYLE3"></span>
             </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">有效时间： </td>
             <td bgcolor="#FFFFFF" >
                <html:text property="indate" readonly="true"
									 onclick="setDay(this);" styleId="invalidate"/>
				<span id="dmsg" class="STYLE3"></span>
             </td>
          </tr>
          <tr>
             <td bgcolor="#FFFFFF" width="100" align="right">操 作： </td>
             <td bgcolor="#FFFFFF" >
               <html:button property="" value="添 加" onclick="sub();"></html:button>
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
