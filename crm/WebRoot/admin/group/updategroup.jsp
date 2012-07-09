<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改集团</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/testform.js"></script>
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
	<script type="text/javascript">
		var temp;
		function clearText(temp){
			temp.value="";		
		}
		function subAdd(){
		
		  
		  if(checkGroupname()&& checkPri()&&checkCity()&&checkArea()&&checkVocetion()&&checkXz()&&checkSend()){
		 var selcity=document.getElementById("secity").value;
		
		  document.getElementById("sel").value=selcity;
		  groupForm.submit();
		  }
		}
		function checkGroupname(){
		 var name=document.getElementById("groupname").value;
		 var flag;
		 if(trim(name).length==0){
		  flag=false;
		  document.getElementById("gname").innerHTML="集团名不能为空";
		 }
		 else if(trim(name).length>=15){
		 flag=false;
		  document.getElementById("gname").innerHTML="输入的值过长";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkPri(){
		 var pri=document.getElementById("province").value;
	  var flag;
	
	  if(pri==0){
	  
	   
	   document.getElementById("pro").innerHTML="请选择省份";
	   flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkCity(){
		 var city=document.getElementById("secity").value;
		 var flag;
		
		 if(city==0){
		  flag=false;
		  document.getElementById("ci").innerHTML=" 请选择城市";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkArea(){
		 var area=document.getElementById("area").value;
	     var flag;
	
	     if(area==0){
	  
	   
	    document.getElementById("garea").innerHTML=" 请选择企业所属地区";
	     flag=false;
	  }else{
	  
	   
		flag=true;
	  } 
	  return flag;
		}	
		function checkVocetion(){
		 var voca=document.getElementById("vocation").value;
		 var flag;
		 if(voca==0){
		  flag=false;
		  document.getElementById("vo").innerHTML="请选择所属行业";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		
		function checkXz(){
		 var voca=document.getElementById("grouptype").value;
		 var flag;
		 if(voca==0){
		  flag=false;
		  document.getElementById("xz").innerHTML="请选择企业性质";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		function checkSend(){
		 var voca=document.getElementById("sendtype").value;
		 var flag;
		 if(voca==0){
		  flag=false;
		  document.getElementById("send").innerHTML="请选择运营状态";
		 }
		 else{
		   flag=true;
		 }
		 return flag;
		}	
		
		
		 var xmlHttp;	
    function createhttprequest(){
      if (window.ActiveXObject){
	    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  else if (window.XMLHttpRequest){
	    xmlHttp = new XMLHttpRequest();
	 }
   }
   
   
   function startrequest(){
   
     createhttprequest();
     var sid=document.getElementById("province").value;
     

    var url="${pageContext.request.contextPath}/admin/group.do?task=getCitys&pid="+sid+"&date="+new Date();
     xmlHttp.open("GET",url,true);
	xmlHttp.onreadystatechange=callback;
	xmlHttp.send(null); 

   }	
   function callback(){
   if (xmlHttp.readyState == 4){
			if (xmlHttp.status == 200){
				var sh=xmlHttp.responseText;
				document.getElementById("dt").innerHTML=sh;
			}
		}
   }
   
   function selectcity(){
   
     createhttprequest();
     var sid=document.getElementById("province").value;
     var cid=document.getElementById("secity").value;

    var url="${pageContext.request.contextPath}/admin/group.do?task=getArea&pid="+sid+"&cid="+cid+"&date="+new Date();
     xmlHttp.open("GET",url,true);
	xmlHttp.onreadystatechange=callback1;
	xmlHttp.send(null); 

   }	
   function callback1(){
   if (xmlHttp.readyState == 4){
			if (xmlHttp.status == 200){
				var sh=xmlHttp.responseText;
				document.getElementById("dq").innerHTML=sh;
			}
		}
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
                <td width="60"></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"></div></td>
                    <td class="STYLE1"><div align="center"></div></td>
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
            	<div align="center" class="STYLE6"><b>
              		修改集团
            	</b></div>
            </td>           
          </tr>
          <!-- end titile -->
          <!-- data -->
          <tr>           
            <td colspan="7" height="20" bgcolor="#FFFFFF" align="center"  height="20" >
            	<html:form action="/admin/group" styleId="groupForm">
            	<input type="hidden" name="task" value="updateGroup">
            	<html:hidden property="manager"/>
            	<html:hidden property="state"/>
            	<html:hidden property="groupid"/>
            	<html:hidden property="grouplevel"/>
            	
            	<html:hidden property="city" styleId="sel"/>
            	<input type="hidden" name="sel" id="sel">
	            	<table width="100%">
	            	    <tr>
	            			<td colspan="2" class="STYLE5" height="40" width="528" bgcolor="#FFFFFF" class="STYLE1" align="right">集团名称：</td>
	            			<td colspan="7" height="40" width="622" bgcolor="#FFFFFF"><html:text property="groupname"/><span id="gname"></span></td>
	            		</tr>
	            		<logic:present name="ma">
	            		<logic:notEqual value="2" name="ma">
	            		
                       <tr>	
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属省份：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="prilist">
	            			<logic:notEmpty name="prilist">
	            			<html:select property="province" styleId="province" onchange="startrequest();">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="prilist" property="VCode" labelProperty="VName"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="pro"></span></td>
	            		</tr>
	            		
	            			<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属城市：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">
	            			<span id="dt">
	            			<logic:present name="citylist">
	            			<logic:notEmpty name="citylist">
	            			<html:select property="secity" styleId="secity" onchange="selectcity();">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="citylist" property="VCode" labelProperty="VName"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="ci"></span></span></td>
	            			
                            
	            			
	            		</tr>
	            		<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属地区：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">
	            			<span id="dq">
	            			<logic:present name="arealist">
	            			<logic:notEmpty name="arealist">
	            			<html:select property="area" styleId="area" >
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="arealist" property="NId" labelProperty="VName"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present></span><span id="garea">
	            			</span>
                             </td>
	            			
	            		</tr>
                        
	            		<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >所属行业：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="datalist">
	            			<logic:notEmpty name="datalist">
	            			<html:select property="vocation">
	            			
	            			<html:options collection="datalist" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="vo"></span>
	            			</td>
	            			</tr>
	            			</logic:notEqual>
	            		</logic:present>
	            		<logic:present name="ma">
	            		<logic:equal value="2" name="ma">
	            		
                       <tr>	
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属省份：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">${pro.VName} <html:hidden property="province" value="${pro.VCode}"/>
	            			</td>
	            		</tr>
	            		
	            			<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属城市：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">${city.VName}<html:hidden property="secity" value="${city.VCode}"/>
	            			</td>
	            			
	            		</tr>
	            		<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">所属地区：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF">${areas.VName}<html:hidden property="area" value="${areas.NId}"/>
	            			</td>
	            			
	            		</tr>
                        
	            		<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >所属行业：</td>
	            			<td colspan="7" height="40" bgcolor="#FFFFFF"><html:hidden property="vocation" value="${voca.id}"/>
	            			${voca.name}
	            			</td>
	            			</tr>
	            			</logic:equal>
	            		</logic:present>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1"  align="right">是否党政军：</td>
	            			<td  colspan="2" height="40" bgcolor="#FFFFFF">
	            			<html:radio property="army" value="0">否</html:radio>
					        <html:radio property="army" value="1">是</html:radio>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >企业性质：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="gtype">
	            			<logic:notEmpty name="gtype">
	            			<html:select property="grouptype">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="gtype" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="xz"></span>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >运营状况：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="statu">
	            			<logic:notEmpty name="statu">
	            			<html:select property="sendtype">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="statu" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present><span id="send"></span>
	            			</td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE7" colspan="4" height="40" bgcolor="#FFFFFF" class="STYLE1" align="center">以下选添</td>
	            			
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">法人：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="useman"/></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">注册资金：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="openmon"/>￥</td>
	            		</tr>
	            		<tr>
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right" >财务状况：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<logic:present name="statu">
	            			<logic:notEmpty name="statu">
	            			<html:select property="moneytype">
	            			<html:option value="0">==请选择==</html:option>
	            			<html:options collection="statu" property="id" labelProperty="name"/>
	            			</html:select>
	            			</logic:notEmpty>
	            			</logic:present>
	            			</td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">员工人数：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="empcount"/></td>
	            		</tr>
	            		<tr>	
	            			<td class="STYLE5" colspan="2" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">网址：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="web"/></td>
	            		</tr>
	            			<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" class="STYLE1" align="right">地址：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF"><html:text property="address"/><span id="ad"></span></td>
	            		</tr>
	            		<tr>
	            			<td colspan="2" class="STYLE5" height="40" bgcolor="#FFFFFF" align="right">邮编：</td>
	            			<td class="STYLE7" colspan="2" height="40" bgcolor="#FFFFFF">
	            			<html:text property="post"></html:text>
	            			<span id="po"></span>
	            			</td>
	            		</tr>	
	            			     	
	            		
	            		
	            		<tr>
	            			<td height="40" bgcolor="#FFFFFF" align="right"></td>
	            			
	            			<td height="40" bgcolor="#FFFFFF" class="STYLE1" align="center">
	            			<html:button property="" value="提交" onclick="subAdd();"></html:button></td>
	            			<td height="40" bgcolor="#FFFFFF" align="center">
	            			<html:button property="" value="返回" onclick="returns();"></html:button>
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

