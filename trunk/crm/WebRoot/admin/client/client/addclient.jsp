<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>添加客户资料</title>

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
		src="${pageContext.request.contextPath}/admin/js/testform.js"></script>

	<script type="text/javascript">
		function addClientInfo(){
			
			if(document.getElementById("clientInfo").style.display=="none"){
							
				document.getElementById("clientInfo").style.display="block";
			}else{
				document.getElementById("clientInfo").style.display="none";			
			}	
		}		
	
		function checkAge(obj){
			if(obj.value!=""){
				if(isNumber(obj.value)){
					if(obj.value>120 || obj.value <10){
						obj.value="";
						alert("年龄要求在10-99岁之间！");
						return false;
					}else{
						return true;
					}				
				}else{
					obj.value="";
					alert("年龄只能为数字！！");
					return  false;
				}
			}else{
				return true;
			}			
		}
		
		function checkPhone(obj){
			if(obj.value!=""){
				if(isNumber(obj.value)){
					if(limitLen(obj.value,5,10)){
						return true;
					}else{
						obj.value="";
						alert("电话号码长度为5-10！");
						return  false;	
						return false;
					}					
				}else{
					obj.value="";
					alert("电话号码只能为数字！");
					return  false;	
				}			
			}else{
				return true;
			}		
		}
		function checkEmail(obj){
			if(obj.value!=""){
				if(isEmail(obj.value)){
					return true;
				}else{
					obj.value="";
					alert("E-mail格式错误！请认真输入！");
					return false;
				}
			}else{
				return true;
			}
		}
		function checkCode(obj){
			if(obj.value!=""){
				if(isNumber(obj.value)){
					if(obj.value.length!=6){
						obj.value="";
						alert("邮编应为6位！");
						return false;
					}else{
						return true;					
					}
				}else{
					obj.value="";
					alert("邮编只能为数字！");
					return false;
				}			
			}else{
				return false;
			}
		}
	
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
</head>
<body>
	<html:form action="/admin/client">
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
													<td width="60">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	
																</td>
															</tr>
														</table>
													</td>
													<td width="60">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	
																</td>
															</tr>
														</table>
													</td>
													<td width="52">
														<table width="88%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	
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
												<b> 客户基本资料 </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20">
											<table width="60%" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" width="50%">
														手机号码：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.phone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														客户姓名：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														证件类型：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="身份证" name="client" property="type">
															身份证
														</logic:equal>
														<logic:equal value="军官证" name="client" property="type">
															军官证
														</logic:equal>
														<logic:equal value="医保证" name="client" property="type">
															医保证
														</logic:equal>
														<logic:equal value="驾驶证" name="client" property="type">
															驾驶证
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														证件号码：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.code}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否为党政军：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="0" name="client" property="isparty">
															否
														</logic:equal>
														<logic:equal value="1" name="client" property="isparty">
															是
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														地区：
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														${client.address}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														营业厅：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.room}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														品牌：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:iterate id="brand" name="dataList">
															<logic:equal value="${brand.id}" name="client"
																property="brand">
																	${brand.name}
																</logic:equal>
														</logic:iterate>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- end data -->
								</table>
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6" align="left">
									<tr>
										<td colspan="7" height="22" align="left"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center" class="STYLE5" style="width: 60%">
												<b> <a onclick="addClientInfo()" style="cursor: hand;"><b>===添加客户个性信息===</b>
												</a> </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left">
											<table style="display:none;" id="clientInfo" cellpadding="0"
												cellspacing="1" bgcolor="b5d6e6" width="60%">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" width=50%">
														性别：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:radio property="sex" value="0"></html:radio>
														男
														<html:radio property="sex" value="1"></html:radio>
														女
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														生日：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="birth" readonly="true"
															onclick="setDay(this);" styleId="invalidate">
														</html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														年龄：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="age" maxlength="2" onblur="checkAge(this);"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														家庭电话：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="familyphone" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														办公电话：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="officephone" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														传真：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="fax" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														E-mail：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="age" maxlength="20" onblur="checkEmail(this);"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														邮编：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="num" maxlength="6" onblur="checkCode(this);"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														工作地点：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="officeaddress" maxlength="50"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														行业：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:select property="trade" style="width:150">
															<html:option value="0">====请==选==择====</html:option>
															<logic:iterate id="trade" name="tradeList">
																<html:option value="${trade.trade}">${trade.name}</html:option>
															</logic:iterate>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否有车：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:radio property="iscar" value="0"></html:radio>
														没车
														<html:radio property="iscar" value="1"></html:radio>
														有车
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														结婚日：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="marriagedate" readonly="true"
															onclick="setDay(this);" styleId="invalidate"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														民族：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="nation" maxlength="20"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														国籍：
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="country" maxlength="20"></html:text>
													</td>
												</tr>
												<tr>
													<td width="30%" height="20" bgcolor="#FFFFFF" align="right">
														<html:button property="" value="返回" onclick="goBack();"></html:button>
														<html:reset value="重置"></html:reset>
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left">
														&nbsp;&nbsp;
														<input type="hidden" name="task" id="task"
															value="addClient">
														<input type="hidden" name="phone" id="phone"
															value="${client.phone}">
														<html:submit value="提交"></html:submit>
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
	</html:form>
</body>
</html:html>
