<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改客户等级规则</title>

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
					alert("计算系数只能为数字！")
					return false;
				}
			}else{
				alert("计算系数不能为空！")
				return false;
			}
		}
		function checkPri(obj){
			if(obj.value.length!=0){
				if(!isNaN(obj.value)){
					return true;
				}else{
					obj.value=""
					alert("优先级只能为数字！")
					return false;
				}
			}else{
				alert("优先级不能为空！")
				return false;
			}
		}
		function checkName(obj){
			if(obj.value.length!=0){
				return true;
			}else{
				obj.value=""
				alert("规则名不能为空！！")
				return false;
			}
		}
		
		function checkDesc(obj){
			if(obj.value.length!=0 && obj.value.length>100){
				obj.value="";
				alert("描述不能超过100个字符！！");
				return false;
			}
		}		
		
	</script>
</head>
<body>
	<html:form action="/admin/rule">
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
													<td width="400" class="STYLE1">
														<span style="width: 400"> <b>客户分级规则管理</b>>>><b>客户分级规则修改</b>
														</span>
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
																		<a
																			href="${pageContext.request.contextPath}/admin/data.do?task=toAddData"><img
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
												<b> 修改客户等级规则 </b>
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
														规则名：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="rulename" onblur="checkName(this);"
															maxlength="10"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														品牌：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="brand">
															<html:option value="0">非世界风</html:option>
															<html:option value="1">世界风</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														计算系数：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="base" onblur="checkBase(this);"
															maxlength="3"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														描述：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="description"  onblur="checkDesc(this);"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														优先级：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="pri" onblur="checkPri(this);"
															maxlength="3"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														锁定：
													</td>
													<td bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="islock">
															<html:option value="0">不锁定</html:option>
															<html:option value="1">锁定</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" colspan="2">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input type="button" value="添加规则表达式" onclick="addTr();">
													</td>
												</tr>
												<tr>
													<td bgcolor="#FFFFFF" class="STYLE1" align="right">
														规则表达式：
													</td>
													<td colspan="1" height="20" bgcolor="#FFFFFF"
														class="STYLE1" align="center">
														<table class="STYLE1" id="expTab" align="left">

															<logic:iterate id="exp" name="exps">
																<tr id="tr${exp.id}a">
																	<logic:equal value="积分" name="exp" property="type">
																		<td>
																			类型<select id="type" name="type" style="width:50px;">
																				<option value="积分">
																					积分
																				</option>
																			</select>
																		</td>
																		<td>
																			&nbsp;积分大于等于
																			<input type="text" maxlength="5" id="startvalue"
																				name="startvalue" style="width:40;"
																				onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
																				value="${exp.startvalue }" />
																			小于
																			<input type="text" id="endvalue" maxlength="5"
																				name="endvalue" style="width:40;"
																				onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
																				value="${exp.endvalue }" />
																			<br>
																		</td>
																		<td>																			
																			&nbsp;&nbsp;<input type="button" value="删除"
																				onclick="delTr('${exp.id}'+'a')" />
																		</td>
																	</logic:equal>
																	<logic:equal value="ARPU" name="exp" property="type">
																		<td>
																			类型<select id="type" name="type" style="width:50px;">
																				<option value="ARPU">
																					ARPU
																				</option>
																			</select>
																		</td>
																		<td>
																			&nbsp;ARPU大于等于
																			<input type="text" maxlength="5"
																				value="${exp.startvalue }" id="startvalue"
																				name="startvalue" style="width:40;"
																				onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}" />
																			<br>
																		</td>
																		<td>																			
																			&nbsp;&nbsp;<input type="button" value="删除"
																				onclick="delTr('${exp.id}'+'a')" />
																		</td>
																	</logic:equal>
																</tr>
															</logic:iterate>

														</table>
													</td>
												</tr>						

												<tr>
													<td width="30%" height="20" bgcolor="#FFFFFF" align="right" class="STYLE1">
														友情提示：
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left" style="color: red;" class="STYLE1">
														<br>&nbsp;如果要改变原来的规则表达式类型，请删除原来的，并重新添加；<br>
														&nbsp;积分类型:表示&ge;最下值，&lt; 最大值，最大值为空表示无上限；<br>
														&nbsp;ARPU类型:表示&ge;输入的值。<br>&nbsp;
													</td>
												</tr>

												<tr>
													<td width="30%" height="20" bgcolor="#FFFFFF" align="right">
														<br>
														&nbsp;
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left">
														<br>
														<html:reset value="重置"></html:reset>
														&nbsp;&nbsp;
														<input type="hidden" name="task" id="task"
															value="updateClientRule">
														<html:hidden property="id" />
														<html:submit value="修改"></html:submit>
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
