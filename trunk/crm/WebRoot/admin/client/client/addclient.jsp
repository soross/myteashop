<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>��ӿͻ�����</title>

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
						alert("����Ҫ����10-99��֮�䣡");
						return false;
					}else{
						return true;
					}				
				}else{
					obj.value="";
					alert("����ֻ��Ϊ���֣���");
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
						alert("�绰���볤��Ϊ5-10��");
						return  false;	
						return false;
					}					
				}else{
					obj.value="";
					alert("�绰����ֻ��Ϊ���֣�");
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
					alert("E-mail��ʽ�������������룡");
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
						alert("�ʱ�ӦΪ6λ��");
						return false;
					}else{
						return true;					
					}
				}else{
					obj.value="";
					alert("�ʱ�ֻ��Ϊ���֣�");
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
						<!-- title   7��-->
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
												<b> �ͻ��������� </b>
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
														�ֻ����룺
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.phone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														�ͻ�������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														֤�����ͣ�
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="���֤" name="client" property="type">
															���֤
														</logic:equal>
														<logic:equal value="����֤" name="client" property="type">
															����֤
														</logic:equal>
														<logic:equal value="ҽ��֤" name="client" property="type">
															ҽ��֤
														</logic:equal>
														<logic:equal value="��ʻ֤" name="client" property="type">
															��ʻ֤
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														֤�����룺
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.code}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														�Ƿ�Ϊ��������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="0" name="client" property="isparty">
															��
														</logic:equal>
														<logic:equal value="1" name="client" property="isparty">
															��
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														${client.address}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														Ӫҵ����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														${client.room}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														Ʒ�ƣ�
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
												<b> <a onclick="addClientInfo()" style="cursor: hand;"><b>===��ӿͻ�������Ϣ===</b>
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
														�Ա�
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:radio property="sex" value="0"></html:radio>
														��
														<html:radio property="sex" value="1"></html:radio>
														Ů
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														���գ�
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
														���䣺
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="age" maxlength="2" onblur="checkAge(this);"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														��ͥ�绰��
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="familyphone" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														�칫�绰��
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="officephone" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														���棺
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="fax" maxlength="10" onblur="checkPhone(this);" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														E-mail��
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="age" maxlength="20" onblur="checkEmail(this);"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														�ʱࣺ
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="num" maxlength="6" onblur="checkCode(this);"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														�����ص㣺
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="officeaddress" maxlength="50"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														��ҵ��
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:select property="trade" style="width:150">
															<html:option value="0">====��==ѡ==��====</html:option>
															<logic:iterate id="trade" name="tradeList">
																<html:option value="${trade.trade}">${trade.name}</html:option>
															</logic:iterate>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														�Ƿ��г���
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:radio property="iscar" value="0"></html:radio>
														û��
														<html:radio property="iscar" value="1"></html:radio>
														�г�
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														����գ�
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="marriagedate" readonly="true"
															onclick="setDay(this);" styleId="invalidate"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														���壺
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="nation" maxlength="20"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������
													</td>
													<td height="20" bgcolor="#FFFFFF">
														<html:text property="country" maxlength="20"></html:text>
													</td>
												</tr>
												<tr>
													<td width="30%" height="20" bgcolor="#FFFFFF" align="right">
														<html:button property="" value="����" onclick="goBack();"></html:button>
														<html:reset value="����"></html:reset>
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left">
														&nbsp;&nbsp;
														<input type="hidden" name="task" id="task"
															value="addClient">
														<input type="hidden" name="phone" id="phone"
															value="${client.phone}">
														<html:submit value="�ύ"></html:submit>
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
