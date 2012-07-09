<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>更新客户等级</title>

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
	
	<script type="text/javascript">
		function checkGrade(){
			var newgrade =  (document.getElementsByName("newgrade")[0]).value;
			var oldgrade =  (document.getElementsByName("oldgrade")[0]).value;
			if(newgrade == oldgrade){
				alert("客户等级没用更改！如果不更改请返回！");
				return false;
			}
			return true;
		}
		function checkUser(){
			var user = (document.getElementsByName("checkuser")[0]).value;
			if(user.length==0){
				alert("请输入审核人！！");
				return false;
			}
			return true;
		}
		function checkTime(){
			var ti = (document.getElementsByName("checktime")[0]).value;			
			if(ti==""||ti==" "){
				alert("请输入审核人时间！！")
				return false;
			}else{
				return true;
			}			
		}
		function checkNo(){
			var no = (document.getElementsByName("checkno")[0]).value;			
			if(no.length==0){
				alert("请输入审核单号时间！！")
				return false;
			}
			return true;
		}
	
		function check(){
			if(checkGrade() && checkUser()&& checkNo() && checkTime()){
				return true;
			}else{
				return false;
			}			
		}
		
	</script>
	
</head>
<body>
	<html:form action="/admin/client" onsubmit="return check();">
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
													<span style="width: 400"> <b>客户分级</b>>>><b>客户等级调整</b></span>
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
												<b> 客户等级调整 </b>
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
														手机号：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${client.phone}
														<html:hidden property="phone" value="${client.phone}"/>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														客户名：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${client.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														品牌：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:present name="dataList">
															<logic:iterate id="brand" name="dataList">
																<logic:equal value="${client.brand}" name="brand" property="id">
																	&nbsp;${brand.name}
																</logic:equal>														
															</logic:iterate>
														</logic:present>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否为党政军用户：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<logic:equal value="0" name="client" property="isparty">
															&nbsp;不是
														</logic:equal>
														<logic:equal value="1" name="client" property="isparty">
															&nbsp;是
														</logic:equal>
													</td>
												</tr>												
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														地址：
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${client.address}													
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														开户时间：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;<bean:write name="client" property="regdate" format="yyyy-MM-dd HH:mm:ss"/>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														等级：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:hidden  property="oldgrade"/>
														&nbsp;<html:select property="newgrade">
															<logic:iterate id="grade" name="gradeList">
																<html:option value="${grade.id}">${grade.name}</html:option>
															</logic:iterate>
														</html:select>		
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														审核人：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;<html:text style="width:120;" property="checkuser" maxlength="20"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														单号：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;<html:text style="width:120;" property="checkno" maxlength="10" onkeyup="value=value.replace(/[^\d]/g,'')"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														审核时间：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;<html:text style="width:120;" property="checktime" readonly="true"
															onclick="setDayHM(this);" styleId="invalidate"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														<br>&nbsp;												
														
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<br>
														&nbsp;&nbsp;<html:reset value="重置"></html:reset>
														<html:hidden property="task" value="updateClientGrade"/>
														&nbsp;&nbsp;<html:submit value="提交"></html:submit>
																										
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
