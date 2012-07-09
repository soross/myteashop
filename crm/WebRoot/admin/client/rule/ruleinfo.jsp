<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>规则详细信息</title>

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

	<script type="text/javascript">
		function addClientInfo(){			
			if(document.getElementById("clientInfo").style.display=="none"){							
				document.getElementById("clientInfo").style.display="block";
			}else{
				document.getElementById("clientInfo").style.display="none";			
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
												<td width="400"  class="STYLE1" >
													<span style="width: 400"> <b>客户分级规则管理</b>>>><b>客户分级规则详细信息</b></span>
												</td>
												<td  class="STYLE1"></td>
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
																		<a
																			href="${pageContext.request.contextPath}/admin/client/rule/addrule.jsp"><img
																				src="${pageContext.request.contextPath}/admin/images/22.gif"
																				width="14" height="14" border="0" /> </a>
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		<a
																			href="${pageContext.request.contextPath}/admin/client/rule/addrule.jsp">新增</a>
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
											<div align="center" class="STYLE5" style="width: 700">
												<b> 客户等级规则详细信息 </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20">
											<table width="700" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" width="50%">
														规则ID：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${rule.id}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														规则名：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${rule.rulename}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														品牌：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														 <logic:equal value="0"
															name="rule" property="brand">
															&nbsp;非世界风
														</logic:equal>
														<logic:equal value="1" name="rule" property="brand">
															&nbsp;世界风
														</logic:equal> 
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														计算系数：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${rule.base}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														描述：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${rule.description}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否锁定：
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="0"
															name="rule" property="islock">
															&nbsp;未锁定
														</logic:equal>
														<logic:equal value="1" name="rule" property="islock">
															&nbsp;锁定
														</logic:equal> 														
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														优先级：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${rule.pri}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														规则表达式：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:iterate id="exp" name="exps">
																&nbsp;${exp.expression}<br>
														</logic:iterate>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														<br>&nbsp;												
														
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<br>
														&nbsp;&nbsp;
														<logic:equal value="0" name="rule" property="islock">
																<a
																	href="${pageContext.request.contextPath}/admin/rule.do?task=lockRule&id=${rule.id}&islock=1">锁定规则</a>&nbsp;&nbsp;																	
																<a href="${pageContext.request.contextPath}/admin/rule.do?task=deleteRule&id=${rule.id}">删除</a>&nbsp;&nbsp;														
																<a href="${pageContext.request.contextPath}/admin/rule.do?task=toUpdateRule&id=${rule.id}">修改</a>																
															</logic:equal> <logic:equal value="1" name="rule" property="islock">
																<a
																	href="${pageContext.request.contextPath}/admin/rule.do?task=lockRule&id=${rule.id}&islock=0">解锁</a>
															</logic:equal> &nbsp;&nbsp;&nbsp;
														
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
