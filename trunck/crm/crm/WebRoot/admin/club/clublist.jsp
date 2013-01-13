<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>俱乐部网点列表</title>

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
		
		
		function deleteClub(clubid){
		
		var url="${pageContext.request.contextPath}/admin/clubnetwork.do?task=deleteClub&clubid="+clubid;
		if(confirm("真的要删除ID号为"+clubid+"的俱乐部网点吗？")){
		location.href=url;
		
		}
	}
	
	function clubState(clubid,state){
	
	url="${pageContext.request.contextPath}/admin/clubnetwork.do?task=updateState&clubid="+clubid+"&state="+state;
	if(state==1){
	
	if(confirm("审核ID号为"+clubid+"的俱乐部网点通过吗？")){
		location.href=url;
		}
	}
	if(state==2){
	
	if(confirm("审核ID号为"+clubid+"的俱乐部网点不通过吗？")){
		location.href=url;
		}
	}
	if(state==3){
	if(confirm("要注销ID号为"+clubid+"的俱乐部网点吗？")){
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
													当前位置：俱乐部配备
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
																		href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=add">新增</a>
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
										<span style="width:50;text-align:center;" class="STYLE1">网点编号</span>
									</td>
									<td width="20%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1" style="width:50;text-align:center;">网点地址</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">管理员</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">网点电话</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">服务类型</span>
										</div>
									</td>

									<td width="5%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:50;text-align:center;" class="STYLE1">网点级别</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span style="width:25;text-align:center;" class="STYLE1">状态</span>
										</div>
									</td>

									<td width="18%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF" colspan="2">
										<div align="center">
											<span style="width:100;text-align:center;" class="STYLE1">操作</span>
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
															
															未审核
															
															</logic:equal> <logic:equal value="1" name="clubnetinfo"
															property="clubnetState">审核通过</logic:equal> <logic:equal
															value="2" name="clubnetinfo" property="clubnetState">审核不通过</logic:equal>
														<logic:equal value="3" name="clubnetinfo"
															property="clubnetState">已注销</logic:equal> </span>
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
																style="cursor:hand;color:blue">通过</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a onclick="clubState('${clubnetinfo.clubnetId}',2)"
																style="cursor:hand;color:blue">不通过</a><br>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=update&clubid=${clubnetinfo.clubnetId}">修改</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> 删除</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">查看</a>
														</logic:equal> <logic:equal value="1" name="clubnetinfo"
															property="clubnetState">

															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />

															<a onclick="clubState('${clubnetinfo.clubnetId}',3)"
																style="cursor:hand;color:blue"> 注销</a>


															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">查看</a>
														</logic:equal> <logic:equal value="2" name="clubnetinfo"
															property="clubnetState">
															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> 删除</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">查看</a>

														</logic:equal> <logic:equal value="3" name="clubnetinfo"
															property="clubnetState">

															<img
																src="${pageContext.request.contextPath}/admin/images/del.gif"
																width="16" height="16" />
															<a onclick="deleteClub('${clubnetinfo.clubnetId}')"
																style="cursor:hand;color:blue"> 删除</a>
															<img
																src="${pageContext.request.contextPath}/admin/images/edt.gif"
																width="16" height="16" />
															<a
																href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=seachClub&clubid=${clubnetinfo.clubnetId}">查看</a>

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
