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

	<title>���Žyһ��ͼ����</title>

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
	<table width="100%" border="0">
		<tr>
			<td width="33%" valign="top">
				<table width="100%" border="1">
					<tr>
						<td colspan="2" class="STYLE1">
							��������&nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=groupinfo&groupid=${groupFee.groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							��������:
						</td>
						<td class="STYLE1">
							&nbsp;${group.groupname }
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							���ű��:
						</td>
						<td class="STYLE1">
							&nbsp;${group.groupid }
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							��ҵ���
						</td>
						<td class="STYLE1">
							&nbsp;${group.vocation}
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							����:
						</td>

						<td class="STYLE1" align="left">
							&nbsp;${group.grouplevel}
						</td>

					</tr>
					<tr>
						<td class="STYLE1">
							����״̬:
						</td>

						<td class="STYLE1">


							<logic:equal value="0" name="group" property="state">��Ǳ�ڼ���</logic:equal>
							<logic:equal value="1" name="group" property="state">Ǳ�ڼ���</logic:equal>
							<logic:equal value="2" name="group" property="state">��ʽ����</logic:equal>
							<logic:equal value="3" name="group" property="state">��˷�������</logic:equal>
							<logic:equal value="4" name="group" property="state">ע������</logic:equal>
						</td>

					</tr>
				</table>
			</td>
			<td width="39%" rowspan="2" valign="top">
				<table width="100%" border="0">
					<tr>
						<td class="STYLE1">
							�»�������ͼ
						</td>
					</tr>
					<tr align="center">
						<td>
							<img
								src="${pageContext.request.contextPath}/admin/groupView.do?task=monthView&groupid=${groupid}">
						</td>
					</tr>
				</table>
			</td>
			<td width="28%" valign="top">
				<table width="100%" border="1">
					<tr>
						<td colspan="3" class="STYLE1">
							������Ϣ &nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=traffic&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							�����
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.monthfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.monthfee/groupFee.fullfee*100}" pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							����ͨ����
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.sayfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber value="${groupFee.sayfee/groupFee.fullfee*100}"
								pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							��;��
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.longfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.longfee/groupFee.fullfee*100}" pattern="0.00">
							</fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							���η�
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.swimfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.swimfee/groupFee.fullfee*100}" pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							���ŷ�
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.shortfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.shortfee/groupFee.fullfee*100}" pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							��ֵҵ��
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.addfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber value="${groupFee.addfee/groupFee.fullfee*100}"
								pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							��������
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.otherfee}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.otherfee/groupFee.fullfee*100}" pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							�����ܶ�
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.fullfee}
						</td>
						<td class="STYLE1">
							100%
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" border="1">
					<tr>
						<td colspan="3" class="STYLE1">
							��ϵ������
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							����
						</td>
						<td class="STYLE1">
							ְ��
						</td>
						<td class="STYLE1">
							�绰
						</td>
					</tr>
					<logic:empty name="linker">
						<tr>
							<td class="STYLE1" colspan="3" align="center">
								���޸ü�����ϵ�����ϣ�
							</td>
						</tr>

					</logic:empty>
					<logic:present name="linker">
						<tr>
							<td class="STYLE1">
								&nbsp;${linker.name}&nbsp;
							</td>
							<td class="STYLE1">
								&nbsp;${linker.job}&nbsp;
							</td>
							<td class="STYLE1">
								&nbsp;${linker.telephone}&nbsp;
							</td>
						</tr>
					</logic:present>

				</table>
			</td>
			<td>
				<table width="100%" border="1">
					<tr>
						<td colspan="3" class="STYLE1">
							������Ա��� &nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=guserlist&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							�����û�����
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.outcount}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.outcount/groupFee.allcount*100}"
								pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>


					<tr>
						<td class="STYLE1">
							�����㻰����
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.zerocount}
						</td>
						<td class="STYLE1">
							<fmt:formatNumber
								value="${groupFee.zerocount/groupFee.allcount*100}"
								pattern="0.00"></fmt:formatNumber>
							%
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							������
						</td>
						<td class="STYLE1">
							&nbsp;${groupFee.allcount}
						</td>
						<td class="STYLE1">
							100%
						</td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<table width="100%" border="1">
					<tr>
						<td colspan="2" class="STYLE1">
							Ƿ�����&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=feeinfo&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							����
						</td>
						<td class="STYLE1">
							���
						</td>
					</tr>
					<logic:present name="groupFeeList">
						<logic:iterate id="groupfee" name="groupFeeList">
							<tr>
								<td>

									<fmt:formatDate value="${groupfee.historytime}"
										pattern="yyyyMM"></fmt:formatDate>
								</td>
								<td>
									&nbsp;${groupfee.lostmoney}
								</td>

							</tr>
						</logic:iterate>

					</logic:present>

				</table>
			</td>
			<td rowspan="2" valign="top">
				<table width="100%" border="0" class="STYLE1">
					<tr>
						<td>
							�û���������ͼ
						</td>
					</tr>
					<tr align="center">
						<td class="STYLE1">
							<img
								src="${pageContext.request.contextPath}/admin/groupView.do?task=userCountView&groupid=${groupid}">
						</td>
					</tr>
				</table>
			</td>
			<td rowspan="2" valign="top">
				<table width="100%" border="1">
					<tr>
						<td colspan="2" class="STYLE1">
							���˼�¼
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							����
						</td>
						<td class="STYLE1">
							�����ܶ�
						</td>
					</tr>

					<logic:present name="groupFeeList">
						<logic:iterate id="groupfee" name="groupFeeList">
							<tr>
								<td>

									<fmt:formatDate value="${groupfee.historytime}"
										pattern="yyyyMM"></fmt:formatDate>
								</td>
								<td>
									&nbsp;${groupfee.fullfee}
								</td>

							</tr>
						</logic:iterate>

					</logic:present>

				</table>
			</td>
		</tr>

	</table>
</body>
</html:html>
