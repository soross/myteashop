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

	<title>������Ϣ</title>

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
													��ǰλ�ã�������Ϣ
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
										align="left">
										<div align="left">
											<span class="STYLE1"></span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">

											<span class="STYLE1"><a href="${pageContext.request.contextPath}/admin/groupView.do?task=groupinfo&groupid=${groupFee.groupid}">��������</a></span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">

												<span class="STYLE1"><a href="${pageContext.request.contextPath}/admin/groupView.do?task=guserlist&groupid=${groupFee.groupid}">�û����</a></span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">
											<a href="${pageContext.request.contextPath}/admin/groupView.do?task=feeinfo&groupid=${groupFee.groupid}">������Ϣ</a>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left"
										background="${pageContext.request.contextPath}/admin/images/bg.gif">
										<div align="left">
											 <a href="${pageContext.request.contextPath}/admin/groupView.do?task=traffic&groupid=${groupFee.groupid}">������Ϣ</a>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">
											<span class="STYLE1">
											<a href="${pageContext.request.contextPath}/admin/groupView.do?task=behavior&groupid=${groupFee.groupid}">ͨ����Ϊ</a>
											</span>
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">									
											<span class="STYLE1"><a href="${pageContext.request.contextPath}/admin/groupView.do?task=transaction&groupid=${groupFee.groupid}">�춯��Ϣ</a>											
										</div>
									</td>
									<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
										align="left">
										<div align="left">
												<span class="STYLE1"><a href="${pageContext.request.contextPath}/admin/groupView.do?task=countView&groupid=${groupFee.groupid}">������ͼ</a>
										</div>
									</td>
								</tr>
								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="8">
										���6����������Ϣ
									</td>
								</tr>
								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="8">
										&nbsp; &nbsp;��ǰ�£�${nowFee}.0 &nbsp;ǰ��һ���£�${nowFee1}.0
										&nbsp;ǰ�ڶ����£�${nowFee2}.0 &nbsp;ǰ�������£�${nowFee3}.0
										&nbsp;ǰ���ĸ��£�${nowFee4}.0 &nbsp;ǰ������£�${nowFee5}.0&nbsp;&nbsp;

									</td>
								</tr>
								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="8">
										Ƿ����Ϣ
									</td>
								</tr>
								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="8" align="center">
										���³���ʱ��Ƿ�ѽ��:${groupFee.lostmoney }
									</td>
								</tr>
								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="8">
										���ѽṹ(��λ��Ԫ)
									</td>
								</tr>

								<tr>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="4">
										<table border="1" width="100%" height="100%" align="center">
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													����
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													����
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													ռ��
												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													�����
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.monthfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.monthfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													����ͨ����
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.sayfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.sayfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													��;��
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.longfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.longfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													���η�
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.swimfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.swimfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													���ŷ�
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.shortfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.shortfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													��ֵҵ���
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.addfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.addfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													��������
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.otherfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													<fmt:formatNumber
														value="${groupFee.otherfee/groupFee.fullfee*100}"
														pattern="0.00">
													</fmt:formatNumber>
													%

												</td>
											</tr>
												<tr>
												<td bgcolor="#FFFFFF" class="STYLE1">
													�ܷ���
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">
													${groupFee.fullfee}
												</td>
												<td bgcolor="#FFFFFF" class="STYLE1">

													100%

												</td>
											</tr>
											
										</table>
									</td>
									<td bgcolor="#FFFFFF" class="STYLE1" colspan="4">
										<table bgcolor="1" width="100%">
											<tr>
												<td bgcolor="#FFFFFF" class="STYLE1" colspan="4">
													<img
														src="${pageContext.request.contextPath}/admin/groupView.do?task=trafficView&groupid=${groupFee.groupid}">
												</td>

											</tr>
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
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td>

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
