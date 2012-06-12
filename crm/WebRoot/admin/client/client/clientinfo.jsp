<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>修改客户资料</title>

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
		
		function getCityAjax(obj){
			
	  		var url="${pageContext.request.contextPath}/admin/client.do";
	  			
	  		var paras="pro="+obj.value+"&task=searchCityList";
	  		
	  		new Ajax.Request(url,
	  		{
	  			method:"post",
	  			parameters:paras,
	  			onComplete:function(xmlHttp){
	  				if(xmlHttp.status==200){
	  					var result = xmlHttp.responseText;
	  					var city = eval(result);
	  					var objs = document.getElementsByTagName("select");
	  					for(var i = 0 ; i<objs.length;i++){
	  						if(objs[i].name=="city"){
	  							objs[i].options.length = 0;
	  							var varItem = new Option("请选择","0");
 								objs[i].options.add(varItem);
	  							for(var j = 0; j<city.length;j++){
	  								var varItem = new Option(city[j].name,city[j].city);
 									objs[i].options.add(varItem);
 								}
	  						}
	  						if(objs[i].name=="area"){
	  							objs[i].options.length = 0;
	  							var varItem = new Option("请选择","0");
 								objs[i].options.add(varItem);
	  						}
	  					}
	  					
	  				}
	  			}
	  		});
	  	}
	  	function getAreaAjax(obj){
			var url="${pageContext.request.contextPath}/admin/client.do";
	  			
	  		var paras="city="+obj.value+"&task=searchAreaList";
	  		
	  		new Ajax.Request(url,
	  		{
	  			method:"post",
	  			parameters:paras,
	  			onComplete:function(xmlHttp){
	  				if(xmlHttp.status==200){
	  					var result = xmlHttp.responseText;
	  					var area = eval(result);
	  					
	  					var objs = document.getElementsByTagName("select");
	  					for(var i = 0 ; i<objs.length;i++){
	  						if(objs[i].name=="area"){
	  							objs[i].options.length = 0;
	  							var varItem = new Option("请选择","0");
 								objs[i].options.add(varItem);
	  							for(var j = 0; j<area.length;j++){
	  								var varItem = new Option(area[j].name,area[j].area);
 									objs[i].options.add(varItem);
 								}
	  						}
	  					}
	  					
	  				}
	  			}
	  		}); 	
	  		
	  		
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
													<td width="50%"  class="STYLE1">
														<b>大客户管理</b>>>><b>客户详细信息</b>
													</td>
													<td width="50%" class="STYLE1"></td>
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
											<div align="center" class="STYLE5" style="width:660">
												<b> 客户基本资料 </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20">
											<table width="700px" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" width="47%">
														手机号码：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.phone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" background="images/bg.gif">
														客户姓名：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														证件类型：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.type}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														证件号码：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.code}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否为党政军：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<logic:equal value="1" name="client" property="isparty">是</logic:equal>
														<logic:equal value="0" name="client" property="isparty">不是</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														营业厅：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.room}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														地址：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.address}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														品牌：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<logic:present name="dataList">
															<logic:iterate id="brand" name="dataList">
																<logic:equal value="${client.brand}" name="brand"
																	property="id">
																	${brand.name}
																</logic:equal>
															</logic:iterate>
														</logic:present>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														维系人：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${client.linkman}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否为集团用户：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<logic:equal value="1" name="client" property="isgroup">是</logic:equal>
														<logic:equal value="0" name="client" property="isgroup">不是</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														开户时间
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;
														<bean:write name="client" property="regdate"
															format="yyyy-MM-dd HH:mm:ss" />
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
											<div align="center" class="STYLE5" style="width: 660">
												<b> <a onclick="addClientInfo()" style="cursor: hand;"><b>===客户个性信息===</b>
												</a> </b>
											</div>
										</td>
									</tr>
									<!-- end titile -->
									<!-- data -->
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left">
											<table style="display:none;" id="clientInfo" cellpadding="0"
												cellspacing="1" bgcolor="b5d6e6" width="700">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right" width="47%">
														性别：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<bean:define id="clientinfo" name="client"
															property="clientinfo"></bean:define>
														&nbsp;
														<logic:equal value="1" name="clientinfo" property="sex">男</logic:equal>
														<logic:equal value="0" name="clientinfo" property="sex">女</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														生日：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;<bean:write name="clientinfo" property="birthday"
															format="yyyy-MM-dd" />
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														年龄：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.age}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														家庭电话：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.familyphone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														办公电话：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.officephone}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														传真：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.fax}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														E-mail：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.email}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														邮编：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.num}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														工作地点：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.officeaddress}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														行业：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<logic:present name="tradeList">
															<logic:iterate id="trade" name="tradeList">
																<logic:equal value="${clientinfo.trade}" name="trade"
																	property="trade">
																	${trade.name}
																</logic:equal>
															</logic:iterate>
														</logic:present>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														是否有车：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<logic:equal value="1" name="clientinfo" property="iscar">有车</logic:equal>
														<logic:equal value="0" name="clientinfo" property="iscar">没车</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														结婚日：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;
														<bean:write name="clientinfo" property="marrdate"
															format="yyyy-MM-dd" />
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														民族：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.nation}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="right">
														国籍：
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;&nbsp;${clientinfo.country }
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" align="right"
														class="STYLE1">
														&nbsp;
													</td>
													<td height="20" bgcolor="#FFFFFF" align="left"
														class="STYLE1">
														<br>
														<a
															href="${pageContext.request.contextPath}/admin/client.do?task=deleteClient&phone=${client.phone}"><img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" border="0" />删除</a> &nbsp;&nbsp;
														&nbsp;&nbsp;
														<a
															href="${pageContext.request.contextPath}/admin/client.do?task=toUpdateClient&phone=${client.phone}"><img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" border="0" />编辑</a>
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
