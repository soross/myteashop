<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>���ֲ������б�</title>

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
	a{text-decoration: none}     
         text{
           width:100px;
           height:20px;
         }
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
		//�˴�clickcolorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
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
		
		
		function deleteClub(clubid){
		
		var url="${pageContext.request.contextPath}/admin/clubnetwork.do?task=deleteClub&clubid="+clubid;
		if(confirm("���Ҫɾ��ID��Ϊ"+clubid+"�ľ��ֲ�������")){
		location.href=url;
		
		}
	}
	
	function clubState(clubid,state){
	
	url="${pageContext.request.contextPath}/admin/clubnetwork.do?task=updateState&clubid="+clubid+"&state="+state;
	if(state==1){
	
	if(confirm("���ID��Ϊ"+clubid+"�ľ��ֲ�����ͨ����")){
		location.href=url;
		}
	}
	if(state==2){
	
	if(confirm("���ID��Ϊ"+clubid+"�ľ��ֲ����㲻ͨ����")){
		location.href=url;
		}
	}
	if(state==3){
	if(confirm("Ҫע��ID��Ϊ"+clubid+"�ľ��ֲ�������")){
		location.href=url;
		
		}
	
	}
	
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
												<td width="50%" class="STYLE1">
													��ǰλ�ã����ֲ��䱸
												</td>
												<td width="50%"></td>
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
																	<img
																		src="${pageContext.request.contextPath}/admin/images/22.gif"
																		width="14" height="14" />
																</div>
															</td>
															<td class="STYLE1">
																<div align="center">
																	<a
																		href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=add">����</a>
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
																<div align="center"></div>
															</td>
														</tr>
													</table>
												</td>
												<td width="52">
													<table width="88%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td class="STYLE1">
																<div align="center"></div>
															</td>
															<td class="STYLE1">
																<div align="center"></div>
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
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="b5d6e6">
								<tr>
									<td width="3%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<span style="width:50;text-align:center;" class="STYLE1">������</span>
									</td>
									<td width="20%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1" style="width:50;text-align:center;">�����ַ</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">����Ա</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">����绰</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">��������</span>
										</div>
									</td>

									<td width="5%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">���㼶��</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:25;text-align:center;" class="STYLE1">״̬</span>
										</div>
									</td>

									<td width="18%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF" colspan="2">
										<div align="center">
											<span style="width:100;text-align:center;" class="STYLE1">����</span>
										</div>
									</td>
								</tr>
								<logic:present name="clubnetinfoList">
									<logic:iterate id="clubnetinfo" name="clubnetinfoList">
										<tr>
											<td height="8" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${clubnetinfo.clubnetId}</span>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${clubnetinfo.clubnetAddr} </span>
												</div>
											</td>
											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${clubnetinfo.clubnetManger } </span>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${clubnetinfo.clubnetTelnum } </span>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:present
															name="clublelist">
															<logic:iterate id="type" name="clubtypelist">
																<logic:equal value="${type.id}" name="clubnetinfo"
																	property="clubnetType">${type.name}</logic:equal>
															</logic:iterate>

														</logic:present> </span>
												</div>
											</td>

											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:present
															name="clublelist">
															<logic:iterate id="level" name="clublelist">
																<logic:equal value="${level.id}" name="clubnetinfo"
																	property="clubnetLevel">${level.name}</logic:equal>
															</logic:iterate>

														</logic:present> </span>
												</div>
											</td>

											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:equal value="0"
															name="clubnetinfo" property="clubnetState">
															
															δ���
															
															</logic:equal> <logic:equal value="1" name="clubnetinfo"
															property="clubnetState">���ͨ��</logic:equal> <logic:equal
															value="2" name="clubnetinfo" property="clubnetState">��˲�ͨ��</logic:equal>
														<logic:equal value="3" name="clubnetinfo"
															property="clubnetState">��ע��</logic:equal> </span>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF" colspan="2">
												<div align="center">
													<span class="STYLE4"> <logic:equal value="0"
															name="clubnetinfo" property="clubnetState">
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a onclick="clubState('${clubnetinfo.clubnetId}',1)"
																style="cursor:hand;color:blue">ͨ��</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a onclick="clubState('${clubnetinfo.clubnetId}',2)"
																style="cursor:hand;color:blue">��ͨ��</a><br>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=update&clubid=${clubnetinfo.clubnetId}">�޸�</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> ɾ��</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">�鿴</a>
														</logic:equal> <logic:equal value="1" name="clubnetinfo"
															property="clubnetState">

															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />

															<a onclick="clubState('${clubnetinfo.clubnetId}',3)"
																style="cursor:hand;color:blue"> ע��</a>


															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">�鿴</a>
														</logic:equal> <logic:equal value="2" name="clubnetinfo"
															property="clubnetState">
															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> ɾ��</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">�鿴</a>

														</logic:equal> <logic:equal value="3" name="clubnetinfo"
															property="clubnetState">

															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> ɾ��</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">�鿴</a>

														</logic:equal> </span>
												</div>
											</td>
										</tr>
									</logic:iterate>
								</logic:present>
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
</body>
</html:html>
