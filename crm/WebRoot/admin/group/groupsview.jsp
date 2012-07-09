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

	<title>集团統一视图汇总</title>

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
	</script>
</head>

<body>
	<table width="100%" border="0">
		<tr>
			<td width="33%" valign="top">
				<table width="100%" border="1">
					<tr>
						<td colspan="2" class="STYLE1">
							基本资料&nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=groupinfo&groupid=${groupFee.groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							集团名称:
						</td>
						<td class="STYLE1">
							&nbsp;${group.groupname }
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							集团编号:
						</td>
						<td class="STYLE1">
							&nbsp;${group.groupid }
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							行业类别：
						</td>
						<td class="STYLE1">
							&nbsp;${group.vocation}
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							级别:
						</td>

						<td class="STYLE1" align="left">
							&nbsp;${group.grouplevel}
						</td>

					</tr>
					<tr>
						<td class="STYLE1">
							集团状态:
						</td>

						<td class="STYLE1">


							<logic:equal value="0" name="group" property="state">非潜在集团</logic:equal>
							<logic:equal value="1" name="group" property="state">潜在集团</logic:equal>
							<logic:equal value="2" name="group" property="state">正式集团</logic:equal>
							<logic:equal value="3" name="group" property="state">审核废弃集团</logic:equal>
							<logic:equal value="4" name="group" property="state">注销集团</logic:equal>
						</td>

					</tr>
				</table>
			</td>
			<td width="39%" rowspan="2" valign="top">
				<table width="100%" border="0">
					<tr>
						<td class="STYLE1">
							月话费趋势图
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
							话务信息 &nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=traffic&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							月租费
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
							基本通话费
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
							长途费
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
							漫游费
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
							短信费
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
							增值业务
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
							其他费用
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
							费用总额
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
							联系人资料
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							姓名
						</td>
						<td class="STYLE1">
							职务
						</td>
						<td class="STYLE1">
							电话
						</td>
					</tr>
					<logic:empty name="linker">
						<tr>
							<td class="STYLE1" colspan="3" align="center">
								暂无该集团联系人资料！
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
							集团人员情况 &nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=guserlist&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							出账用户人数
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
							本月零话单数
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
							总人数
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
							欠费情况&nbsp;&nbsp;&nbsp;
							<a
								href="${pageContext.request.contextPath}/admin/groupView.do?task=feeinfo&groupid=${groupid}">more>></a>
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							帐期
						</td>
						<td class="STYLE1">
							余额
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
							用户数月趋势图
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
							开账记录
						</td>
					</tr>
					<tr>
						<td class="STYLE1">
							帐期
						</td>
						<td class="STYLE1">
							话费总额
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
