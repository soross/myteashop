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

	<title>规则日志</title>

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
	
	<script type="text/javascript">
		function showInfo(){
			var obj = document.getElementById("operinfo");
			if(obj.style.display=="none"){
				obj.style.display="block";
			}else{
				obj.style.display="none";
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
												<b>规则日志列表 </b>
											</div>
										</td>
									</tr>		
									<tr>
										<td height="20" bgcolor="#FFFFFF" class="STYLE1">
											<table cellpadding="0" cellspacing="1" bgcolor="b5d6e6" width="100%">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="50"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width: 50">序号</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">规则号</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:90">创建人</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="150"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:150">创建时间</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:90">操作人</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="150"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span >操作时间</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span >操作类型</span>
													</td>																								
												</tr>
												
												<logic:present name="logList">
													<logic:empty name="logList">
														<Tr>
															<td colspan="7"  height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center" style="color: red">
																没有您所要查询的数据！！
															</td>
														</Tr>
													</logic:empty>
													<logic:iterate id="log" name="logList">
														<tr>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.id}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.ruleid }
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.creater }
																
															</td>

															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">																
																<bean:write name="log" property="createdate" format="yyyy-MM-dd HH:mm:ss"/>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.operator}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.operdate}
																
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="0" name="log" property="opertype">新增</logic:equal>
																<logic:equal value="1" name="log" property="opertype">修改</logic:equal>
																<logic:equal value="2" name="log" property="opertype">删除</logic:equal>
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
														<page:page name="pageUtil"/>
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
									