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

	<title>ҵ������Ǽ�</title>

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
		function getSearch(){
			var vtab = document.getElementById("search");
			if(vtab.style.display=="none"){
				vtab.style.display="block";
			}else{
				vtab.style.display="none";
			}
		}
		function getType2(obj){			
			if(obj.value!="0"){
		  		var url="${pageContext.request.contextPath}/admin/business.do";	  			
		  		var paras="type1="+obj.value+"&task=searchType2List";	  		
		  		new Ajax.Request(url,
		  		{
		  			method:"post",
		  			parameters:paras,
		  			onComplete:function(xmlHttp){
		  				if(xmlHttp.status==200){
		  					var result = xmlHttp.responseText;
		  					var oper = eval(result);
		  					var objs = document.getElementsByTagName("select");
		  					for(var i = 0 ; i<objs.length;i++){	  						
		  						if(objs[i].name=="type2"){
		  							objs[i].options.length = 1;
		  							for(var j = 0; j<oper.length;j++){
		  								var varItem = new Option(oper[j].type,oper[j].id);
	 									objs[i].options.add(varItem);
	 								}
			  					}
			  				}		
			  			}
			  		}
			  	});
	  		}else{
	  			var objs = document.getElementsByTagName("select");
		  		for(var i = 0 ; i<objs.length;i++){	  						
		  			if(objs[i].name=="type2"){
		  				objs[i].options.length = 1;
		  			}
		  		}	
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
												<b> ҵ���б� </b>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="7" height="20" bgcolor="#FFFFFF" align="left"
											height="20" class="STYLE1">
											<table width="100%" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6" id="search" style="display:block;">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														��ʼʱ��
													</td>
													<td height="20" width="200" bgcolor="#FFFFFF"
														class="STYLE1">
														<html:text property="registerdate" readonly="true"
															onclick="setDay(this);" styleId="invalidate"></html:text>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														��ֹʱ��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="checkeddate" readonly="true"
															onclick="setDay(this);" styleId="invalidate"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														�������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="id" maxlength="5"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														�û�ID
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="phone" maxlength="11"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														ҵ������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														<html:select property="type1" onchange="getType2(this);">
															<html:option value="0">==��ѡ��==</html:option>
															<html:option value="1">��ʱҵ��</html:option>
															<html:option value="2">�Ǽ�ʱҵ��</html:option>
														</html:select>
														<html:select property="type2">
															<html:option value="0">===��ѡ��===</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														�����־
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="state">
															<html:option value="0">==��ѡ��==</html:option>
															<html:option value="1">δ����</html:option>
															<html:option value="2">�Ѵ���</html:option>
															<html:option value="3">�޷�����</html:option>
															<html:option value="4">������</html:option>
														</html:select>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:select property="canuserdate">
															<html:option value="0">==��ѡ��==</html:option>
															<html:option value="1">������Ч</html:option>
															<html:option value="0">������Ч</html:option>
														</html:select>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														�Ǽǹ���
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="reguser" maxlength="10"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" width="100">
														������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														<html:text property="checkuser" maxlength="10"
															onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"></html:text>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center" colspan="4">
														<input type="hidden" id="task" name="task"
															value="searchBusinessList">
														<html:submit value="��ѯ"></html:submit>
													</td>
												</tr>
											</table>
											<br>
											<span style="width: 650;text-align: right;color: blue;">
												<a style="cursor: hand;" onclick="getSearch();">-=��ʾ/���ظ߼���ѯ=-</a>
											</span>
										</td>
									</tr>
									<tr>
										<td height="20" bgcolor="#FFFFFF" class="STYLE1">
											<table cellpadding="0" cellspacing="1" bgcolor="b5d6e6">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="50"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width: 50">�������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">�ֻ���</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ҵ������һ</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ҵ�����Ͷ�</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ҵ��������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ҵ��������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ҵ��������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="60"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:60">��ͨ���</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="50"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:50">����</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:90">�Ǽ�ʱ��</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:60">�Ǽ���</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:90">����ʱ��</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:60">������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:60">������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="85"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:60">����</span>
													</td>
												</tr>
												<logic:present name="list">
													<logic:empty name="list">
														<Tr>
															<td colspan="15"  height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center" style="color: red">
																û������Ҫ��ѯ�����ݣ���
															</td>
														</Tr>
													</logic:empty>
													<logic:iterate id="business" name="list">
														<tr>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${business.id}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${business.phone }
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="1" name="business" property="type1">��ʱҵ��</logic:equal>
																<logic:equal value="2" name="business" property="type1">�Ǽ�ʱҵ��</logic:equal>
															</td>

															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:iterate id="type" name="typeList">
																	<logic:equal value="${type.id}" name="business"
																		property="type2">
															${type.type}
														</logic:equal>
																</logic:iterate>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:iterate id="type" name="typeList">
																	<logic:equal value="${type.id}" name="business"
																		property="type3">
															${type.type}
														</logic:equal>
																</logic:iterate>
																<logic:equal value="" name="business" property="type3">
																δѡ
														</logic:equal>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:iterate id="type" name="typeList">
																	<logic:equal value="${type.id}" name="business"
																		property="type4">
															${type.type}
														</logic:equal>
																</logic:iterate>
																<logic:equal value="" name="business" property="type4">
															δѡ
														</logic:equal>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:iterate id="type" name="typeList">
																	<logic:equal value="${type.id}" name="business"
																		property="type5">
															${type.type}
														</logic:equal>
																</logic:iterate>
																<logic:equal value="" name="business" property="type5">
															δѡ
														</logic:equal>
															</td>

															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="0" name="business"
																	property="openstate">��ͨ</logic:equal>
																<logic:equal value="1" name="business"
																	property="openstate">�ر�</logic:equal>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="0" name="business"
																	property="canuserdate">��������</logic:equal>
																<logic:equal value="1" name="business"
																	property="canuserdate">��������</logic:equal>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<bean:write name="business" property="regdate"
																	format="yyyy-MM-dd HH:mm:ss" />
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${business.reguser}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<bean:write name="business" property="checkdate"
																	format="yyyy-MM-dd HH:mm:ss" />
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${business.checkuser}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="1" name="business" property="state">
																	δ����
																</logic:equal>
																<logic:equal value="2" name="business" property="state">
																	�Ѵ���
																</logic:equal>
																<logic:equal value="3" name="business" property="state">
																	�޷�����
																</logic:equal>
																<logic:equal value="4" name="business" property="state">
																	������
																</logic:equal>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="1" name="business" property="state">
																	<span style="cursor: hand;"><a
																		href="${pageContext.request.contextPath}/admin/business.do?task=toCheckBusiness&id=${business.id}&phone=${business.phone}">����</a>
																	</span>
																</logic:equal>
																<logic:equal value="2" name="business" property="state">
																	<span style="cursor: hand;"><a
																		href="${pageContext.request.contextPath}/admin/business.do?task=toCheckBusiness&id=${business.id}&phone=${business.phone}">�ٴδ���</a>
																	</span>
																</logic:equal>
																<logic:equal value="3" name="business" property="state">
																	<span style="cursor: hand;"><a
																		href="${pageContext.request.contextPath}/admin/business.do?task=toCheckBusiness&id=${business.id}&phone=${business.phone}">���´���</a>
																	</span>
																</logic:equal>
																<logic:equal value="4" name="business" property="state">
																	<span style="cursor: hand;"><a
																		href="${pageContext.request.contextPath}/admin/business.do?task=toCheckBusiness&id=${business.id}&phone=${business.phone}">���´���</a>
																	</span>
																</logic:equal>
																<br>
																<span style="cursor: hand;width:84;">
																	<a href="${pageContext.request.contextPath}/admin/business.do?task=checkBusinessLog&id=${business.id}">ҵ������־</a>
																</span>
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
		<input id="0" style="display: none">
	</html:form>
</body>
</html:html>
