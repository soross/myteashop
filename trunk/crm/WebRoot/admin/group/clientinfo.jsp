<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="jn0904" uri="/jn0904"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�ͻ���ϸ��Ϣ</title>

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
												<td class="STYLE1" align="left">
													��ǰλ�ã��ͻ���ϸ��������
												</td>
												<td class="STYLE1" align="right">
												</td>
											</tr>

										</table>
									</td>

									<td width="54%">
										<table border="0" align="right" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="60">



												</td>
												<td width="60">
													<table width="90%" border="0" cellpadding="0"
														cellspacing="0">

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
						<td width="8">
							&nbsp;
						</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="b5d6e6">

								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left" colspan="4"
										background="${pageContext.request.contextPath}/admin/images/bg.gif">
										<div align="left">
											<span class="STYLE1"> �ͻ�������Ϣ</span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> �ֻ���:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.phone}</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ����:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.name}</span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ֤������:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.type}</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ֤������:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.code}</span>
										</div>
									</td>
								</tr>

								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ����ʡ��:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> <logic:present
													name="provinceList">
													<logic:iterate id="provice" name="provinceList">
														<logic:equal value="${client.provice}" name="provice"
															property="VCode">${provice.VName}</logic:equal>
													</logic:iterate>

												</logic:present> </span>
										</div>
									</td>

									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> Ӫҵ��:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.room}</span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ��ַ:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ${client.address}</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ע��ʱ��:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1">
													<fmt:formatDate value="${client.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
											</span>
										</div>
									</td>
								</tr>
								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> Ʒ��:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> <logic:present name="brandList">
													<logic:iterate id="brand" name="brandList">
														<logic:equal value="${client.brand}" name="brand"
															property="id">${brand.name}</logic:equal>
													</logic:iterate>

												</logic:present> </span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1"> ��Ϊ��ͻ�ʱ��:</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="center">
											<span class="STYLE1">
													<fmt:formatDate value="${client.bigdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
											
											</span>
										</div>
									</td>
								</tr>


								<tr>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left" colspan="4"
										background="${pageContext.request.contextPath}/admin/images/bg.gif">
										<div align="left">
											<span class="STYLE1"> �ͻ�������Ϣ</span>
										</div>
									</td>
								</tr>

								<logic:notPresent name="client" property="clientinfo">

									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left" colspan="4">
											<div align="center">
												<span class="STYLE1"> �ÿͻ����ނ�����Ϣ</span>
											</div>
										</td>
									</tr>
								</logic:notPresent>


								<logic:present name="client" property="clientinfo">

									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> �Ա�:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> <logic:equal value="0"
														name="client" property="clientinfo.sex">��</logic:equal> <logic:equal
														value="1" name="client" property="clientinfo.sex">Ů</logic:equal>

												</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">���� :</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.birthday}</span>
											</div>
										</td>
									</tr>


									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ����:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.age} </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">��ҵ:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> <logic:present
														name="vocationList">

														<logic:iterate id="vocation" name="vocationList">
															<logic:equal value="${client.clientinfo.trade}"
																name="vocation" property="trade">${vocation.name}</logic:equal>
														</logic:iterate>

													</logic:present> </span>
											</div>
										</td>
									</tr>

									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> �Ƿ��г�:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> <logic:equal value="0"
														name="client" property="clientinfo.iscar">�޳�</logic:equal>
													<logic:equal value="1" name="client"
														property="clientinfo.iscar">�г�</logic:equal> </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">�Ƿ���:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.marrdate} </span>
											</div>
										</td>
									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ����:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.nation} </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">����:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.country} </span>
											</div>
										</td>
									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> �����:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.fax} </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">���������:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.email} </span>
											</div>
										</td>
									</tr>

									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ��ͥ�绰:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">
													${client.clientinfo.familyphone} </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">�칫�绰:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">
													${client.clientinfo.officephone} </span>
											</div>
										</td>
									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> �����:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.fax} </span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1">���������:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="center">
												<span class="STYLE1"> ${client.clientinfo.email} </span>
											</div>
										</td>
									</tr>




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
												<td class="STYLE1">

												</td>
												<td width="100">

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
