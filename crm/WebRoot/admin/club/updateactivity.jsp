<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改活动</title>

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
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/testform.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function subAdd(){
		
		   if(checkTime()&&checkAddress()&&checkCon()&&checkMan()&&checkBcount()&&checkFcount()&&checkFee()&&checkFname()&&checkFb()&&checkFf()){
		  
		  activityForm.submit();
			}else{
				document.getElementById("fee").innerHTML="请输入活动费用明细";
			}
		}
		function checkTime(){
		 var atime=document.getElementById("actTime").value;
		 var flag;
		 if(atime.length==0){
		  flag=false;
		  document.getElementById("atime").innerHTML="请输入活动时间";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkAddress(){
		 var addr=document.getElementById("actAddr").value;
	  var flag;
	
	  if(trim(addr).length==0){
	  
	   
	   document.getElementById("address").innerHTML="请输入活动地址";
	   flag=false;
	  }
	   else if(trim(addr).length>=39){
		 flag=false;
		  document.getElementById("address").innerHTML="输入的值过长";
		 }
	  else{
		flag=true;
	  } 
	  return flag;
		}	
		function checkCon(){
		 var tent=document.getElementById("actContent").value;
	  var flag;
	
	  if(trim(tent).length==0){
	  
	   
	   document.getElementById("amore").innerHTML="请输入活动内容";
	   flag=false;
	  }
	  else if(trim(tent).length>=149){
		 flag=false;
		  document.getElementById("amore").innerHTML="输入的值过长";
		 }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkMan(){
		 var nizer=document.getElementById("organizer").value;
	  var flag;
	
	  if(trim(nizer).length==0){
	  
	   
	   document.getElementById("aman").innerHTML="请输入活动组织者";
	   flag=false;
	  }
	  else if(trim(nizer).length>=19){
		 flag=false;
		  document.getElementById("aman").innerHTML="输入的值过长";
		 }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		
		function checkBcount(){
		 var bcount=document.getElementById("intendCount").value;
	  var flag;
	
	  if(trim(bcount).length==0){
	   document.getElementById("bc").innerHTML="请输入预计参加人数";
	   flag=false;
	  }
	  else if(!/^[0-9]{1,}$/.test(bcount)){
	   document.getElementById("bc").innerHTML="人数应为数字";
	   flag=false;
	   }
	  else{
	    
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkFcount(){
		 var fcount=document.getElementById("factCount").value;
	     var flag;
	
	  if(trim(fcount).length==0){
	   document.getElementById("fc").innerHTML="请输入实际参加人数";
	   flag=false;
	  }
	  else if(!/^[0-9]{1,}$/.test(fcount)){
	   document.getElementById("fc").innerHTML="人数应为数字";
	   flag=false;
	   }
	  else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkFee(){
		 var va=document.getElementById("testfee").value;
	     var flag;
	   
	   if(va=="nones"){
	          document.getElementById("fee").innerHTML="请输入活动费用明细";
	           flag=false;
	        }
	    else{
		flag=true;
	   } 
	    return flag;
		}	
   function checkFname(){
        
		 var fname=document.getElementsByName("feename");
	     var flag;
	    for(var i=0;i<fname.length;i++){
	        var va=fname[i].value;
	        if(va=="nones"){
	          document.getElementById("fee").innerHTML="请输入活动费用明细";
	           flag=false;
	        }
	       else if(trim(va).length==0){
	        document.getElementById("fee").innerHTML="请将费用明细输入完整";
	        flag=false;
	        }
	        else if(trim(va).length>=40){
	        document.getElementById("fee").innerHTML="输入值过长";
	        flag=false;
	        }
	        else{
	         flag=true;
	        }
	    }
	      return flag;
	}	
	function checkFb(){
        
		 var fname=document.getElementsByName("bfee");
	     var flag;
	    for(var i=0;i<fname.length;i++){
	        var va=fname[i].value;
	        if(trim(va).length==0){
	        document.getElementById("fee").innerHTML="请将费用明细输入完整";
	        flag=false;
	        }
	        else if(!/^[0-9]{1,}$/.test(va)){
	          document.getElementById("fee").innerHTML="费用应为数字";
	          flag=false;
	        }
	        else{
	         flag=true;
	        }
	    }
	      return flag;
	}	
	function checkFf(){
        
		 var fname=document.getElementsByName("ffee");
	     var flag;
	    for(var i=0;i<fname.length;i++){
	        var va=fname[i].value;
	        if(trim(va).length==0){
	        document.getElementById("fee").innerHTML="请将费用明细输入完整";
	        flag=false;
	        }
	        else if(!/^[0-9]{1,}$/.test(va)){
	          document.getElementById("fee").innerHTML="费用应为数字";
	          flag=false;
	        }
	        else{
	         flag=true;
	        }
	    }
	      return flag;
	}	
  function addFile(){
       	document.getElementById("testfee").value="yes";
  		var tab = document.getElementById("tab");
  		
  		var tr = tab.insertRow(tab.rows.length);//添加表格的一行
  		var td1 = tr.insertCell();//添加一列
  		td1.innerHTML="<input type='text' name='feename'>";
  		var td2 = tr.insertCell();//添加一列
  		td2.innerHTML="<input type='text' name='bfee'>￥";
  		var td3 = tr.insertCell();//添加一列
  		td3.innerHTML="<input type='text' name='ffee'>￥";
  		var td4 = tr.insertCell();
  		td4.innerHTML="<input type='button' value='删除' onclick='delRow();'>";
  		
  	}
  	
  	
  	
  	function delRow(){
  		var tab = document.getElementById("tab");
  		var element = window.event.srcElement;//取到点击的对象
  		
  		while(element.tagName!="TR"){
  			element = element.parentNode;
  		}
  		tab.deleteRow(element.rowIndex);
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
              		添加俱乐部活动
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/activity" >
            	<input type="hidden" name="task" value="updateAct">
            	<input type="hidden" name="testfee" value="yes">
            	<html:hidden property="actId"/>
            	<html:hidden property="ischeck"/>
	            	<table width="100%">
	            	    <tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="right">活动时间:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><html:text property="actTime" onfocus="setDayHM(this);" readonly="true"/><span id="atime"></span></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">活动地点：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="actAddr"/><span id="address"></span></td>
	            		</tr>
	            		
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">活动内容：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="actContent"/><span id="amore"></span>
	            			</td>
	            			
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">活动组织者：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="organizer"/><span id="aman"></span>
	            			</td>
	            			
	            		</tr>
	            		
	            		<tr>
	            			<td class="STYLE5"  height="40" bgcolor="#FFFFFF" class="STYLE1" align="center" >预计参加人数：</td>
	            			<td class="STYLE7"  height="40" bgcolor="#FFFFFF"><html:text property="intendCount"/><span id="bc"></span>
	            			
	            			</td>
	            		
	            			<td class="STYLE5"  height="40" bgcolor="#FFFFFF" class="STYLE1"  align="center">实际参加人数：</td>
	            			<td class="STYLE7" height="40" bgcolor="#FFFFFF"><html:text property="factCount"/><span id="fc"></span>
	            			
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40"   bgcolor="#FFFFFF" class="STYLE1" align="left">活动费用明细:</td>
	            			<td class="STYLE7" colspan="2" height="40"  bgcolor="#FFFFFF"><span id="fee"></span></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="4" ="40" bgcolor="#FFFFFF" class="STYLE1" align="right">
	            			<table id="tab" width="800" border="1" cellspacing="0" bordercolor="#56C1F5">
	            			<tr><td class="STYLE5" align="center">消费名称</td>
	            			    <td class="STYLE5" align="center">预计费用</td>
	            			    <td class="STYLE5" align="center">实际费用</td>
	            			    <td class="STYLE5" align="center"><html:button property="" value="添加消费项" onclick="addFile();"/></td>
	            			    <span id="afee"></span>
	            			</tr>
	            			<span id="fee">
	            			<logic:present name="feeset">
	            			<logic:notEmpty name="feeset">
	            			<logic:iterate id="fee" name="feeset">
	            			<tr><td><input type="text" name="feename" value="${fee.feesName}"></td>
	            			    <td><input type="text" name="bfee" value="${fee.budgFee}">￥</td>
	            			    <td><input type="text" name="ffee" value="${fee.factFee}">￥</td>
	            			    <td><input type="button" value="删除" onclick="delRow();"></td>
	            			</tr>
	            			</logic:iterate>
	            			</logic:notEmpty>
	            			</logic:present>
	            			</span>
	            			</table>
	            			</td>
	            			
	            		</tr>
	            		
	            		
	            		<tr>
	            			<td height="40" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="40" bgcolor="#FFFFFF" class="STYLE1" align="center"><html:button property="" value="返回" onclick="returns();"></html:button></td>
	            			<td height="40" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value="提交" onclick="subAdd();"></html:button>
	            			</td>
	            			<td height="40" bgcolor="#FFFFFF"></td>
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


  
 
