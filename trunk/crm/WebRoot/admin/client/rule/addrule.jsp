<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>��ӿͻ��ȼ�����</title>

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
		src="${pageContext.request.contextPath}/admin/js/testfrom.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/tab_rule.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>

	<script type="text/javascript">
		function checkBase(obj){
			
			if(obj.value.length !=0 ){			
				if(!isNaN(obj.value)){				
					return true;
				}else{
					obj.value=""
					alert("����ϵ��ֻ��Ϊ���֣�")
					return false;
				}
			}else{
				alert("����ϵ������Ϊ�գ�")
				return false;
			}
		}
		function checkPri(obj){
			if(obj.value.length!=0){
				if(!isNaN(obj.value)){
					return true;
				}else{
					obj.value=""
					alert("���ȼ�ֻ��Ϊ���֣�")
					return false;
				}
			}else{
				alert("���ȼ�����Ϊ�գ�")
				return false;
			}
		}
		function checkName(obj){
			if(obj.value.length!=0){
				return true;
			}else{
				obj.value=""
				alert("����������Ϊ�գ���")
				return false;
			}
		}
		
		function checkDesc(obj){
			if(obj.value.length!=0 && obj.value.length>100){
				obj.value="";
				alert("�������ܳ���100���ַ�����");
				return false;
			}
			return true;
		}
		function check(){
			var objname = document.getElementById("rulename");			
			var objbase = document.getElementById("base");
			var objdescription = document.getElementById("description");
			var objpri = document.getElementById("pri");
			
			if(checkName(objname) && checkBase(objbase) && checkDesc(objdescription) && checkPri(objpri)){
				if(checkExp()){
					return true;
				}
			}else{
				return false;
			}
		}
		
		function checkExp(){
			var startvalues = document.getElementsByName("startvalue");
			var endvalues = document.getElementsByName("endvalue");	
							
			for(var i=0;i<startvalues.length;i++){				
				if(parseInt(endvalues[i].value)==-1){					
					if(startvalues[i].value.length==0){
						alert("������ȫ����ARPUֵ��");
						return false;
					}else{
						if(isNaN(startvalues[i].value)){							
							alert("��ȷ�����е�ARPUֵ�Ƿ�Ϊ���֣���");
							return false;
						}
					}
				}else{					
					if(!isNaN(startvalues[i].value)){
						if(!isNaN(endvalues[i].value)){
							if(parseInt(endvalues[i].value)<=parseInt(startvalues[i].value)){
								alert("��������ֵ�����������ֵ����");
								return false;
							}
						}else{
							alert("��ȷ�����л���ֵ�Ƿ�Ϊ���֣���")
							return false;
						}
					}else{
						alert("��ȷ�����л���ֵ�Ƿ�Ϊ���֣���")
						return false;
					}
				}							
			}
			return true;
		}
	</script>

</head>
<body>
	<html:form action="/admin/rule" onsubmit="return check();">
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
													<td width="250" class="STYLE1">
														<b>�ͻ��ּ��������</b>>>>
														<b>��ӿͻ��ּ�����</b>
													</td>
													<td class="STYLE1"></td>
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
																		&nbsp;
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		&nbsp;
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
																		&nbsp;
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		&nbsp;
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
											<div align="center" class="STYLE5" style="width: 700">
												<b> ��ӿͻ��ȼ����� </b>
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
														align="right" width="35%">
														��������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="rulename" maxlength="10"
															onblur="checkName(this);"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														Ʒ�ƣ�
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="brand">
															<html:option value="0">�������</html:option>
															<html:option value="1">�����</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														����ϵ����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="base" onblur="checkBase(this);"
															maxlength="3" onkeyup="value=value.replace(/[^\d]/g,'')" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:textarea property="description" 
															style="width:150;height:50;" onblur="checkDesc(this);"></html:textarea>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														���ȼ���
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="pri" onblur="checkPri(this);"
															maxlength="3" onkeyup="value=value.replace(/[^\d]/g,'')" 
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="islock">
															<html:option value="0">������</html:option>
															<html:option value="1">����</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" colspan="2">
														<input type="button" value="��ӹ�����ʽ" onclick="addTr();">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������ʽ��
													</td>
													<td colspan="1" height="20" bgcolor="#FFFFFF"
														class="STYLE1" align="left">
														<table class="STYLE1" style="vertical-align: middle;"
															id="expTab">
														</table>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														������ʾ��
													</td>
													<td colspan="1" height="20" bgcolor="#FFFFFF"
														class="STYLE1" align="left" style="color: red;">
														<br>&nbsp;��������:��ʾ&ge;����ֵ��&lt; ���ֵ�����ֵΪ�ձ�ʾ�����ޣ�<br>
														&nbsp;ARPU����:��ʾ&ge;�����ֵ��<br>&nbsp;
													</td>
												</tr>
												<tr>
													<td width="30%" height="20" bgcolor="#FFFFFF" align="right">
														<br>
														<html:reset value="����"></html:reset>
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left">
														<br>
														&nbsp;&nbsp;
														<input type="hidden" name="task" id="task"
															value="addClientRule">
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
