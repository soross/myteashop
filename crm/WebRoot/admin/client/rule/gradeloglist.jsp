<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>登记日志</title>

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
													<td width="100%" class="STYLE1"><b>客户等级手动调整日志</b></td>
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
					<table width="100%">						
						<tr>
							<td>

								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									align="left">
									<!-- title   7列-->
									<tr>
										<td height="20" bgcolor="#FFFFFF" class="STYLE1">
											<table cellpadding="0" cellspacing="1" bgcolor="b5d6e6"
												width="100%">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="50"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width: 50">序号</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="100"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:100">手机号</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="100"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:100">审核人</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width=150"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:150">审核时间</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">审核单号</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														width="150" align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span>原始登级</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span>现在等级</span>
													</td>
												</tr>

												<logic:present name="list">
													<logic:empty name="list">
														<Tr>
															<td colspan="7"  height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center" style="color: red">
																没有您所要查询的数据！！
															</td>
														</Tr>
													</logic:empty>
													<logic:iterate id="log" name="list">
														<tr>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.id}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.phone }
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.checkuser }
															</td>

															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<bean:write name="log" property="checkdate"
																	format="yyyy-MM-dd HH:mm:ss" />
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.checkno}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="20" name="log" property="oldgrade">砖石卡</logic:equal>
																<logic:equal value="21" name="log" property="oldgrade">金卡</logic:equal>
																<logic:equal value="22" name="log" property="oldgrade">银卡</logic:equal>
																
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="20" name="log" property="newgrade">砖石卡</logic:equal>
																<logic:equal value="21" name="log" property="newgrade">金卡</logic:equal>
																<logic:equal value="22" name="log" property="newgrade">银卡</logic:equal>
															</td>
														</tr>
													</logic:iterate>
												</logic:present>
											</table>
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
														<page:page name="pageUtil" />
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
	</html:form>
</body>
</html:html>
