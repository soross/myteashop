<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>业务处理</title>

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
											<div align="center" class="STYLE5" style="width: 75%">
												<b> 业务工单处理 </b>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20" class="STYLE1">
											<table width="100%" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														工单序号
													</td>
													<td height="20" width="200" bgcolor="#FFFFFF"
														class="STYLE1">
														&nbsp;${oper.id}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														用户ID
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${oper.phone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														用户姓名
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${client.name}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														处理标志
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														style="color: red;">
														<logic:equal value="1" name="oper" property="state">
															&nbsp;未处理
														</logic:equal>
														<logic:equal value="2" name="oper" property="state">
															&nbsp;已处理
														</logic:equal>
														<logic:equal value="3" name="oper" property="state">
															&nbsp;无法处理
														</logic:equal>
														<logic:equal value="4" name="oper" property="state">
															&nbsp;已作废
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														业务类型一
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="1" name="oper" property="type1">&nbsp;即时业务</logic:equal>
														<logic:equal value="2" name="oper" property="type1">&nbsp;非即时业务</logic:equal>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														业务类型二
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:iterate id="type" name="typeList">
															<logic:equal value="${type.id}" name="oper"
																property="type2">
																&nbsp;${type.type}
															</logic:equal>
														</logic:iterate>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														业务类型三
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:iterate id="type" name="typeList">
															<logic:equal value="${type.id}" name="oper"
																property="type3">
																&nbsp;${type.type}
															</logic:equal>
														</logic:iterate>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														业务类型四
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:iterate id="type" name="typeList">
															<logic:equal value="${type.id}" name="oper"
																property="type4">
																&nbsp;${type.type}
															</logic:equal>
														</logic:iterate>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														业务类型五
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:iterate id="type" name="typeList">
															<logic:equal value="${type.id}" name="oper"
																property="type5">
																&nbsp;${type.type}
															</logic:equal>
														</logic:iterate>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														收件人
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														${oper.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														证件有效期至
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="codetime" format="yyyy-MM-dd"/>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														地址
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.address}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														来电号码
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.call}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														呼转号码
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.move}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														可授信金额
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.creditfee}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														实际授信金额
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.factfee}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														授信原因
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">														
														<logic:equal value="1" name="oper" property="why">出差在外缴费不便</logic:equal>
														<logic:equal value="2" name="oper" property="why">紧急事务</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														开通标志
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="0" name="oper" property="openstate">
															&nbsp;开通
														</logic:equal>
														<logic:equal value="1" name="oper" property="openstate">
															&nbsp;关闭
														</logic:equal>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														账期
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="0" name="oper" property="canuserdate">
															&nbsp;本月账期
														</logic:equal>
														<logic:equal value="1" name="oper" property="canuserdate">
															&nbsp;次月账期
														</logic:equal>

													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														登记时间
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="regdate"
															format="yyyy-MM-dd HH:mm:ss" />
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														登记者
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.reguser}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														处理时间
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="checkdate"
															format="yyyy-MM-dd HH:mm:ss" />
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														处理者
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.checkuser}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														备注
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														&nbsp;${oper.remarks}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														处理结果
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:textarea property="result" cols="40" rows="5"></html:textarea>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														处理标志
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:select property="state">
															<html:option value="0">==请选择==</html:option>
															<html:option value="1">未处理</html:option>
															<html:option value="2">已处理</html:option>
															<html:option value="3">无法处理</html:option>
															<html:option value="4">已作废</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" colspan="4">
														<input type="hidden" id="task" name="task"
															value="updateBusinessState">
														<html:hidden property="id" />
														&nbsp;
														<html:button property="" value="返回"
															onclick="javascript:history.back();"></html:button>
														&nbsp;&nbsp;&nbsp;&nbsp;
														<html:submit value="提交"></html:submit>
													</td>
												</tr>
											</table>
											<br>
										</td>
									</tr>
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
											<table border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td class="STYLE1">
														&nbsp;
													</td>
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
