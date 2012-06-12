<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<jsp:directive.page import="com.ibatis.sqlmap.engine.scope.RequestScope" />

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

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
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>

	<script>
		var  highlightcolor='#c1ebff';
		//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
		var  clickcolor='#51b2f6';
		function  changeto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=highlightcolor;
			}
		}
		
		function  changeback(){
			if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
			return
			if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
			//source.style.backgroundColor=originalcolor
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		function  clickto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=clickcolor;
			}
			else
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		function getRuleLog(){
			location.href="${pageContext.request.contextPath}/admin/rule.do?task=searchRuleLog";
		}
		
		
	</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="400"  class="STYLE1" >
													<span style="width: 400"><b>客户分级规则管理</b>>>><b>添加客户分级规则</b></span>
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
																		href="${pageContext.request.contextPath}/admin/client/rule/addrule.jsp">
																		<img
																			src="${pageContext.request.contextPath}/admin/images/22.gif"
																			width="14" height="14" border="0" /> </a>
																</div>
															</td>
															<td class="STYLE1">
																<div align="center">
																	<a
																		href="${pageContext.request.contextPath}/admin/client/rule/addrule.jsp?cpage=${pageUtil}">新增</a>
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
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td align="center">
							<html:form action="/admin/rule">
								<table class="STYLE1">
									<tr>
										<td>
											&nbsp;
										</td>
										<td>
											规则名：<html:text property="rulename" maxlength="10" style="width:100px;"></html:text>
											<html:hidden property="task" value="ruleList"/>
											<html:submit value="查询"></html:submit>(模糊)
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<html:button property="" value="查询规则日志" onclick="getRuleLog();"></html:button>
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
								</table>
							</html:form>
						</td>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_15.gif">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="b5d6e6">
								<tr>
									<!--
									<td width="25" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										 <div align="center">
											<input type="checkbox" id="ckb" name="ckb" />
										</div> 
									</td>
									-->
									<td colspan="1" width="55" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">规则ID</span>
										</div>
									</td>
									<td colspan="1" width="150" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">规则名</span>
										</div>
									</td>
									<td colspan="1" width="75"  height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">品牌</span>
										</div>
									</td>
									<td colspan="1" height="22" width="70"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">计算系数</span>
										</div>
									</td>
									<td colspan="1"  height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1" style="width:50">描述</span>
										</div>
									</td>
									<td colspan="1" width="75" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">是否锁定</span>
										</div>
									</td>
									<td colspan="1" width="50" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">优先级</span>
										</div>
									</td>
									<td colspan="2" width="200" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">操作</span>
										</div>
									</td>
								</tr>
								<logic:present name="ruleList">
									<logic:empty name="ruleList">
										<Tr>
											<td colspan="8"  height="20" bgcolor="#FFFFFF" class="STYLE1"
												align="center" style="color: red">
												没有您所要查询的数据！！
											</td>
										</Tr>
									</logic:empty>
									<logic:iterate id="rule" name="ruleList">
										<tr>											
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${rule.id}</span>
												</div>
											</td>
											<td bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:present
															name="brandList">
															<logic:iterate id="brand" name="brandList">
																<logic:equal value="${client.brand}" name="brand"
																	property="id">${brand.name}</logic:equal>
															</logic:iterate>
														</logic:present> ${rule.rulename} </span>
												</div>
											</td>
											<td colspan="1" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:equal value="0"
															name="rule" property="brand">
															非世界风
														</logic:equal> <logic:equal value="1" name="rule" property="brand">
															世界风
														</logic:equal> </span>
												</div>
											</td>
											<td colspan="1" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${rule.base} </span>
												</div>
											</td>
											<td colspan="1" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> ${rule.description } </span>
												</div>
											</td>
											<td colspan="1" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:equal value="0"
															name="rule" property="islock">
															未锁定
														</logic:equal> <logic:equal value="1" name="rule" property="islock">
															锁定
														</logic:equal> </span>
												</div>
											</td>
											<td colspan="1" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${rule.pri}</span>
												</div>
											</td>

											<td colspan="2" height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE4"> <a
														href="${pageContext.request.contextPath}/admin/rule.do?task=toRuleInfo&id=${rule.id}"><img
																src="${pageContext.request.contextPath}/admin/images/list.gif"
																width="10" height="10" border="0" />查看</a>&nbsp; &nbsp; <a>
															<logic:equal value="0" name="rule" property="islock">
																<a
																	href="${pageContext.request.contextPath}/admin/rule.do?task=lockRule&id=${rule.id}&islock=1">锁定规则</a>
															</logic:equal> <logic:equal value="1" name="rule" property="islock">
																<a
																	href="${pageContext.request.contextPath}/admin/rule.do?task=lockRule&id=${rule.id}&islock=0">解&nbsp;&nbsp;&nbsp;&nbsp;锁</a>
															</logic:equal> </a></span>
												</div>
											</td>
										</tr>
									</logic:iterate>
								</logic:present>
								<!-- trade -->
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
									<td class="STYLE1" align="right" width="10%">
										&nbsp;&nbsp;
									</td>
									<td>
										<table border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td class="STYLE1" align="center">
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
</body>
</html:html>
