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

	<title>ҵ����־</title>

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
												<b> ҵ����־�б� </b>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<table width="100%" cellpadding="0" cellspacing="1"
												bgcolor="b5d6e6" id="operinfo" style="display:block;">
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�������
													</td>
													<td height="20" width="200" bgcolor="#FFFFFF"
														class="STYLE1">
														&nbsp;${oper.id}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�û�ID
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1">
														&nbsp;${oper.phone}
													</td>
												</tr>
												<tr>													
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�����־
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														style="color: red;" colspan="3">
														<logic:equal value="1" name="oper" property="state">
															&nbsp;δ����
														</logic:equal>
														<logic:equal value="2" name="oper" property="state">
															&nbsp;�Ѵ���
														</logic:equal>
														<logic:equal value="3" name="oper" property="state">
															&nbsp;�޷�����
														</logic:equal>
														<logic:equal value="4" name="oper" property="state">
															&nbsp;������
														</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														ҵ������һ
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="1" name="oper" property="type1">&nbsp;��ʱҵ��</logic:equal>
														<logic:equal value="2" name="oper" property="type1">&nbsp;�Ǽ�ʱҵ��</logic:equal>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														ҵ�����Ͷ�
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
														ҵ��������
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
														ҵ��������
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
														ҵ��������
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
														�ռ���
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														${oper.name}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														֤����Ч����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="codetime" format="yyyy-MM-dd"/>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														��ַ
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.address}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.call}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														��ת����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.move}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�����Ž��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.creditfee}
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														ʵ�����Ž��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.factfee}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														����ԭ��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">														
														<logic:equal value="1" name="oper" property="why">��������ɷѲ���</logic:equal>
														<logic:equal value="2" name="oper" property="why">��������</logic:equal>
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														��ͨ��־
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="0" name="oper" property="openstate">
															&nbsp;��ͨ
														</logic:equal>
														<logic:equal value="1" name="oper" property="openstate">
															&nbsp;�ر�
														</logic:equal>
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														����
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														<logic:equal value="0" name="oper" property="canuserdate">
															&nbsp;��������
														</logic:equal>
														<logic:equal value="1" name="oper" property="canuserdate">
															&nbsp;��������
														</logic:equal>

													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�Ǽ�ʱ��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="regdate"
															format="yyyy-MM-dd HH:mm:ss" />
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														�Ǽ���
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.reguser}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														����ʱ��
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;<bean:write name="oper" property="checkdate"
															format="yyyy-MM-dd HH:mm:ss" />
													</td>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														������
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="1">
														&nbsp;${oper.checkuser}
													</td>
												</tr>
												<tr>
													<td height="20" bgcolor="#F0FFFF" class="STYLE1"
														align="center" width="100">
														��ע
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														colspan="3">
														&nbsp;${oper.remarks}
													</td>													
												</tr>												
											</table>																						
										</td>
									</tr>
									<tr>
										<td style="cursor: hand;" onclick="showInfo();" align="center" class="STYLE1" bgcolor="#F0FFFF">-=��ʾ/����ҵ����Ϣ=-</td>
									</tr>						
									<tr>
										<td height="20" bgcolor="#FFFFFF" class="STYLE1">
											<table cellpadding="0" cellspacing="1" bgcolor="b5d6e6" width="100%">
												<tr>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="50"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width: 50">���</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="70"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">������</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">ԭʼ״̬</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">��״̬</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="90"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span style="width:70">�޸���</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1" width="150"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span >�޸�ʱ��</span>
													</td>
													<td height="20" bgcolor="#FFFFFF" class="STYLE1"
														align="center"
														background="${pageContext.request.contextPath}/admin/images/bg.gif">
														<span >���</span>
													</td>																								
												</tr>
												
												<logic:present name="logList">
													<logic:iterate id="log" name="logList">
														<tr>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.id}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.operid }
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="1" name="log" property="oldstate">
																	δ����
																</logic:equal>
																<logic:equal value="2" name="log" property="oldstate">
																	�Ѵ���
																</logic:equal>
																<logic:equal value="3" name="log" property="oldstate">
																	�޷�����
																</logic:equal>
																<logic:equal value="4" name="log" property="oldstate">
																	������
																</logic:equal>
																
															</td>

															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<logic:equal value="1" name="log" property="newstate">
																	δ����
																</logic:equal>
																<logic:equal value="2" name="log" property="newstate">
																	�Ѵ���
																</logic:equal>
																<logic:equal value="3" name="log" property="newstate">
																	�޷�����
																</logic:equal>
																<logic:equal value="4" name="log" property="newstate">
																	������
																</logic:equal>
																
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.changeuser}
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																<bean:write name="log" property="regdate" format="yyyy-MM-dd HH:mm:ss"/>
															</td>
															<td height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center">
																${log.result}
															</td>
															</tr>
													</logic:iterate>
													<logic:empty name="logList">
													<tr>
														<Td colspan="7" height="20" bgcolor="#FFFFFF" class="STYLE1"
																align="center" style="color: red;"> ��ҵ�����޴�����</Td>
													</tr>
												</logic:empty>	
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
									