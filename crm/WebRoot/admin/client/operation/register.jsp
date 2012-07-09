<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>业务受理登记</title>

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
	.STYLE5 {font-size: 14px;color:}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/prototype.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/business.js"></script>

	<script type="text/javascript">
		function getType2(obj){
			var td = document.getElementById("showtypetd");
			var zysxTD = document.getElementById("zysx");
			zysxTD.innerHTML="";
			td.innerHTML="";
			if(obj.value!="0"){
		  		var url="${pageContext.request.contextPath}/admin/business.do";	  			
		  		var paras="type1="+obj.value+"&task=searchType2List";	  		
		  		new Ajax.Request(url,
		  		{
		  			method:"post",
		  			parameters:paras,
		  			onComplete:function(xmlHttp){
		  				if(xmlHttp.status==200){
		  					var result = xmlHttp.responseText;
		  					var oper = eval(result);
		  					var objs = document.getElementsByTagName("select");
		  					for(var i = 0 ; i<objs.length;i++){	  						
		  						if(objs[i].name=="type2"){
		  							objs[i].options.length = 1;
		  							for(var j = 0; j<oper.length;j++){
		  								var varItem = new Option(oper[j].type,oper[j].id);
	 									objs[i].options.add(varItem);
	 								}
			  					}
			  				}		
			  			}
			  		}
			  	});
	  		}
	  	}
	  	
	  	var grade=0;
	  	var flag = true;
	  	var isPhone= false;	
	  	function checkPhone(obj){		
	  		var url="${pageContext.request.contextPath}/admin/business.do";	  			
	  		var paras="phone="+obj.value+"&task=checkPhone";	  		
	  		new Ajax.Request(url,
	  		{
	  			method:"post",
	  			parameters:paras,
	  			onComplete:function(xmlHttp){
		  				if(xmlHttp.status==200){
		  					var result = xmlHttp.responseText;
		  					var results = eval(result);		  					
		  					document.getElementById("isOK").innerHTML="&nbsp;&nbsp;<font color='red'>"+results[0].isok+"</font>";
		  					if(results[0].isok=="此手机号码可用正常使用!"){
		  						grade = results[0].grade;
		  						isPhone = true;
		  					}else{
								isPhone = false;
		  					}
			  			}
			  		}
		  	});  		
	  	} 
	  	
	  	
	  	function checkCanuserdate(){	  	
	  		if(undefined ==document.getElementById("canuserdate")){
	  			return true;
	  		}else{
	  			if(document.getElementById("canuserdate").value == -1){
	  				alert("请选择账期！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		}	  	
	  	
	  	function checkOpenstate(){	  	
	  		if(undefined ==document.getElementById("openstate")){
	  			return true;
	  		}else{
	  			if(document.getElementById("openstate").value == -1){
	  				alert("请选择开通状态！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		}
	  	
	  	function checkType1(){
	  		var obj = document.getElementsByName("type1")[0];
	  		if(obj.value==0){
	  			return false;
	  		}else{
	  			return true;
	  		}	  		
	  	}
	  	
	  	function checkType2(){
	  		var obj = document.getElementsByName("type2")[0];
	  		if(obj.value==0){
	  			return false;
	  		}else{
	  			return true;
	  		}	  		
	  	}
	  	
	  	function checkType3(){	  	
	  		if(undefined ==document.getElementsByName("type3")[0]){
	  			return true;
	  		}else{
	  			if((document.getElementsByName("type3")[0]).value ==0){
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		}
  		function checkType4(){	  	
	  		if(undefined ==document.getElementsByName("type4")[0]){
	  			return true;
	  		}else{
	  			if((document.getElementsByName("type4")[0]).value ==0){
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		}
  		function checkType5(){	  	
	  		if(undefined ==document.getElementsByName("type5")[0]){
	  			return true;
	  		}else{
	  			if((document.getElementsByName("type5")[0]).value ==0){
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		}  		
	  	function checkCall(){	  	
	  		if(undefined ==document.getElementById("call")){
	  			return true;
	  		}else{
	  			if(document.getElementById("call").value.length== 0 ){
	  				alert("请输入电话号码！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}	  		
  		} 
		function checkMove(){
			if(undefined ==document.getElementById("move")){
	  			return true;
	  		}else{
	  			if(document.getElementById("move").value.length== 0 ){
	  				alert("请输入呼转号码！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}
		}
		function checkFactfee(){
			if(undefined ==document.getElementById("factfee")){
	  			return true;
	  		}else{
		  		var fee = document.getElementById("factfee").value;
	  			if( fee == 0 ){
	  				alert("请选择实际授信额度！！");
	  				return false;
	  			}else{
	  				if(parseInt(fee) > parseInt(document.getElementById("creditfee").value)){
	  					alert("实际授信金额不能大于可授信金额！！");
	  					return false;
	  				}else{
		  				return true;
	  				}
	  			}
	  		}
		}
		function checkName(){
			
			if(undefined ==document.getElementById("name")){
	  			return true;
	  		}else{
	  			if(document.getElementById("name").value.length== 0 ){
	  				alert("请输入姓名！！");
	  				return false;
	  			}else{
		  			return true;
	  			}
	  		}
		}
		
		function checkWhy(){
			if(undefined ==document.getElementById("why")){
	  			return true;
	  		}else{
	  			if(document.getElementById("why").value== 0 ){
	  				alert("请选择授信原因！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}
		}
		
		function checkCodedate(){
			if(undefined ==document.getElementById("codedate")){
	  			return true;
	  		}else{
	  			if(document.getElementById("codedate").value.length== 0 ){
	  				alert("请输入证件有效期！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}
		}
		
		function checkAddress(){
			if(undefined ==document.getElementById("address")){
	  			return true;
	  		}else{
	  			if(document.getElementById("address").value.length== 0 ){
	  				alert("地址不能为空！！");
	  				return false;
	  			}else{
	  				return true;
	  			}
	  		}
		}
	  	function sub(){		
	  		if(flag){				
	  			if(isPhone){
	  				if(checkType3() && checkType2() && checkType1()&& checkType4() && checkType5()){
	  					if(checkOpenstate()){
	  						if(checkCanuserdate()){
	  							if(checkCall()){
	  								if(checkMove()){
	  									if(checkWhy()){
	  										if(checkFactfee()){
	  											if(checkName()){
	  												if(checkCodedate()){
	  													if(checkAddress()){
	  														businessForm.submit();
	  													}
	  												}
	  											}
	  										}
	  									}
	  								}
	  							}
		  					}
	  					}
	  				}else{
	  					alert("请将类型选择完整！");
	  				}
	  			}else{
	  				alert("手机号码不正确！！");
	  			}
	  		}else{
	  			alert("存在无效数据！！请认真填写！！");
	  		}  	
	  	}	  		  	
	</script>

</head>
<body>
	<html:form action="/admin/business">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<!-- add   update  -->
			<tr>
				<td height="30"
					background="${pageContext.request.contextPath}/admin/images/tab_05.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="30">
								<img
									src="${pageContext.request.contextPath}/admin/images/tab_03.gif"
									width="12" height="30" />
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="46%" valign="middle">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="10%"></td>
													<td width="90%" class="STYLE1"></td>
												</tr>
											</table>
										</td>
										<td width="54%">
											<table border="0" align="right" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="60"></td>
													<td width="80">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
															</tr>
														</table>
													</td>
													<td width="60">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
															</tr>
														</table>
													</td>
													<td width="52">
														<table width="88%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">

																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="16">
								<img
									src="${pageContext.request.contextPath}/admin/images/tab_07.gif"
									width="16" height="30" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- end  add  update -->
			<tr>
				<td align="left">

					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						align="left">
						<!-- title   7列-->
						<tr>
							<td width="8"
								background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
								&nbsp;
							</td>
							<td align="left">
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6">
									<tr>
										<td colspan="7" height="22" align="left"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center" class="STYLE5" style="width: 60%">
												<b> 业务受理登记 </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20">
											<table width="800" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														手机号码
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:text property="phone" style="width:120"
															onblur="checkPhone(this);" maxlength="15"
															onkeyup="value=value.replace(/[^\d]/g,'')"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
														<span id="isOK"></span>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														业务类型
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:select property="type1" onchange="getType2(this);">
															<html:option value="0">==请选择==</html:option>
															<html:option value="1">即时业务</html:option>
															<html:option value="2">非即时业务</html:option>
														</html:select>
														<html:select property="type2" onchange="getType3(this);">
															<html:option value="0">===请选择===</html:option>

														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" colspan="4" id="showtypetd">

													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center">
														备注
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:textarea property="remarks" rows="4" cols="75"></html:textarea>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center">
														注意事项
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3" id="zysx">

													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center">

													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3" align="center">
														<input type="hidden" id="task" name="task"
															value="addBusiness">
														<html:button value="登记" property="" onclick="sub();"></html:button>
													</td>
												</tr>

											</table>
										</td>
									</tr>
									<!-- end data -->
								</table>

							</td>
							<td width="8"
								background="${pageContext.request.contextPath}/admin/images/tab_15.gif">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td height="35"
					background="${pageContext.request.contextPath}/admin/images/tab_19.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="35">
								<img
									src="${pageContext.request.contextPath}/admin/images/tab_18.gif"
									width="12" height="35" />
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="STYLE4"></td>
										<td>
											<table border="0" align="right" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="40"></td>
													<td width="45"></td>
													<td width="45"></td>
													<td width="40"></td>
													<td width="100"></td>
													<td width="40"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="16">
								<img
									src="${pageContext.request.contextPath}/admin/images/tab_20.gif"
									width="16" height="35" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<input id="0" style="display: none">
	</html:form>
</body>
</html:html>
