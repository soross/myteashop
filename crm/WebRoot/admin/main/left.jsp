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

	<title>left.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/win.js"></script>
	<style type="text/css">
	<!--
	html {
	SCROLLBAR-FACE-COLOR: #2372b7; /**上下箭头背景色2372b7**/ 
	SCROLLBAR-HIGHLIGHT-COLOR: #1d61a8; /**上下箭头背边框**/
	SCROLLBAR-SHADOW-COLOR: #1d61a8;  /**上下滚动边框**/
	SCROLLBAR-3DLIGHT-COLOR: #1d61a8; /**上下滚动边框**/
	SCROLLBAR-ARROW-COLOR: #ffffff; /**上下滚动边框**/
	SCROLLBAR-TRACK-COLOR: #1d61a8; /**滚动底框**/
	SCROLLBAR-DARKSHADOW-COLOR: #1d61a8;}/**上下滚动边框**/
	
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
	.STYLE1 {
		font-size: 12px;
		color: #FFFFFF;
	}
	.STYLE3 {
		font-size: 12px;
		color: #033d61;
	}
	-->
	</style>
	<style type="text/css">
	.menu_title SPAN {
		FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
	}
	.menu_title2 SPAN {
		FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
	}
	
	</style>

	<script type="text/javascript">
	   function menuopen(id){//菜单伸缩
	     var trs = document.getElementsByTagName('tr');
	     var pmenu=document.getElementById(id);
	     var vdisplay = pmenu.style.display;
	     for(var i=0;i<trs.length;i++){
	     	if(trs[i].className=='powerTrs'){
	     		trs[i].style.display="none";
	     	}
	     }
		if(vdisplay=="none"){
           pmenu.style.display="block";
        }else{
           pmenu.style.display="none";
        }	         
           
     }
     
     var ischeck = false;
     function addWin(){
      var content = document.getElementById("check").value;
      var win =showApply('积分申请信息验证',500,500,content);
      win.show();  
    }
    
    function apply(){
     var tel = Ext.get("tel").dom.value;
     Ext.Ajax.request({
        url:'admin/score.do',
        params:{task:'checkClient',tel:tel},
       // method:'post',
        success:function(response,options){
           	     var result=response.responseText;
           	     var msg = document.getElementById("check");
  		    	 msg.value="";
		  		 var tab = document.getElementById("tab");
		  		     tab.innerText="";
		  		 if(result == "exist"){
		  		    msg.value=" 该号码已经申请了积分！";
		  		    showMsg("该号码已经申请了积分！");
		  		    ischeck = false;
		  		 }else if(result == "noone"){
		  		    msg.value=" 号码不存在！";
		  		    showMsg("号码不存在！");
		  		    ischeck = false;		  		    
		  		 }else{
		  		    var clients = eval(result); 
		  		    var tr1=tab.insertRow(tab.rows.length);
		  			var td_phone_text=tr1.insertCell();
		  			    td_phone_text.innerText="用户号码：";
		  			var td_phone=tr1.insertCell();
		  			    td_phone.innerText=clients[0].phone;   
		  			var tr2=tab.insertRow(tab.rows.length);    
		  			var td_name_text=tr2.insertCell();
		  				td_name_text.innerText="姓 名：";
		  			var td_name=tr2.insertCell();
		  				td_name.innerText=clients[0].name;
		  			var tr3=tab.insertRow(tab.rows.length);    
		  			var td_type_text=tr3.insertCell();
		  				td_type_text.innerText="证件类别：";
		  			var td_type=tr3.insertCell();
		  				td_type.innerText=clients[0].type;
		            var tr4=tab.insertRow(tab.rows.length);  
		  			var td_code_text=tr4.insertCell();
		  				td_code_text.innerText="证件号码：";	
		  			var td_code=tr4.insertCell();
		  				td_code.innerText=clients[0].code;		
		   		    ischeck	= true;
		  		 }
        }
     });
   }
   
   
   function getCalc(){
		var WshShell = new ActiveXObject('WScript.Shell');
		WshShell.Run('calc');
   }
   function getnotepad(){
   		var WshShell = new ActiveXObject('WScript.Shell');
		WshShell.Run('notepad');
   } 
   
	</script>

</head>

<body>
	<table width="159px" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="28" background="images/main_40.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="19%">
							&nbsp;
						</td>
						<td width="81%" height="20">
							<span class="STYLE1">管理菜单</span>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 一个菜单块开始位置 -->
		<tr>
			<td valign="top">
				<table width="145" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td>
							<table width="151" border="0" cellspacing="0" cellpadding="0">
								<!-- 菜单大类开始 -->
								<logic:present name="powers">
									<logic:iterate id="power" name="powers">
										<logic:equal value="0" name="power" property="parentid">
											<tr>
												<td height="23" background="images/main_47.gif"
													id="imgmenu1" class="menu_title"
													onMouseOver="this.className='menu_title2';"												
													onMouseOut="this.className='menu_title';"
													style="cursor:hand" onclick="menuopen(${power.id});">
													<table width="150px" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<!-- 菜单大类的位置 -->
															<td class="STYLE1" >
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${power.powername}
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr id="${power.id}" class="powerTrs" style="display: none;" >
												<td background="images/main_51.gif" id="submenu1">
													<!-- 菜单开始块 -->
													<table width="151"  border="0" cellspacing="0"
														cellpadding="0" >
														<tr >
															<td>
																<table width="90%" height="100%" border="0" align="center"
																	cellpadding="0" cellspacing="0">
																	<!-- 菜单项的开始 -->
																	<logic:present name="powers">
																		<logic:iterate id="power1" name="powers">
																			<logic:equal value="${power.id}" name="power1"
																				property="parentid">
																				<tr>
																					<td width="16%" height="25">
																						<div align="center">
																							<img src="images/left.gif" width="15"
																								height="15" />
																						</div>
																					</td>
																					<td width="84%" height="23">
																						<table width="95%" border="0" cellspacing="0"
																							cellpadding="0">
																							<tr>
																								<!-- 菜单小项的内容 -->
																								<td height="20" style="cursor:hand;"
																									onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																									onmouseout="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#FFFFFF'; " 
																									class="STYLE3">
																									<a
																										href="${pageContext.request.contextPath}${power1.url}"
																										target="rightframe">${power1.powername}</a>
																								</td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</logic:equal>
																		</logic:iterate>
																	</logic:present>
																	<!-- 菜单项的end -->
																</table>
															</td>
														</tr>
														<tr>
															<td height="5" width="151px" background="images/main_52.gif">
															</td>
														</tr>														
													</table>
													<!-- 菜单end -->
												</td>
											</tr>
											<tr>
												<td height="3px"></td>
											</tr>
										</logic:equal>
									</logic:iterate>
								</logic:present>
								<!-- 菜单大类end -->
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="18" background="images/main_58.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="18" valign="bottom">
							<div align="center" class="STYLE3">
								版本：2012V1.0.11
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html:html>
