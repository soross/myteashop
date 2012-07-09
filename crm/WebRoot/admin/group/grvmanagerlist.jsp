<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="jn0904" uri="/jn0904"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>集团列表</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="${pageContext.request.contextPath}/admin/js/testform.js"
		type="text/javascript"></script>
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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/prototype.js"></script>



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
	  							objs[i].options.length = 1;	  							
	  							for(var j = 0; j<city.length;j++){
	  								var varItem = new Option(city[j].name,city[j].name);
 									objs[i].options.add(varItem);
 								}
	  						}	  						
	  					}	  					
	  				}
	  			}
	  		});
	  	}
	  	
	  	
	  	
	  	
	 function checkCount(obj){
    
    
    	if(isNumber(obj.value)){
    	
    	return true;
    	
    	}else{
    		alert("只能输入数字");
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
													当前位置：集团视图管理列表
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
							<html:form action="/admin/groupView" styleId="form1"
								onsubmit="return checkForm();">
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6">
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">集团&nbsp;&nbsp;编号:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="3"
											class="STYLE1">
											<div align="left">
												<html:text property="groupid" maxlength="20"></html:text>
											</div>
										</td>
										<td width="5%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">集团&nbsp;&nbsp;名:</span>
											</div>
										</td>
										<td width="5%" height="22" bgcolor="#FFFFFF" colspan="3"
											class="STYLE1">
											<div align="left">
												<html:text property="groupname" maxlength="50"></html:text>
											</div>
										</td>
									</tr>


									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="right">
											<div align="right">
												<span class="STYLE1">上月用户数:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="right" colspan="3">
											<div align="left">
												<html:text property="fcount" size="8"
													onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
													onkeyup="value=value.replace(/[^\d]/g,'')" maxlength="5"></html:text>
												至
												<html:text property="tcount" size="8"
													onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
													onkeyup="value=value.replace(/[^\d]/g,'')" maxlength="5"></html:text>
											</div>
										</td>

										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="right">
											<div align="right">
												<span class="STYLE1">上月收入:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="right" colspan="3">
											<div align="left">
												<html:text property="fmoney" size="8"
													onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
													onkeyup="value=value.replace(/[^\d]/g,'')" maxlength="8"></html:text>
												.00至
												<html:text property="tmoney" size="8"
													onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
													onkeyup="value=value.replace(/[^\d]/g,'')" maxlength="8"></html:text>
												.00
											</div>
										</td>


									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">省&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;份:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="3"
											class="STYLE1">
											<div align="left">
												<logic:present name="pdataList">
													<html:select property="privince"
														onchange="getCityAjax(this);">
														<html:option value="">==请选择==</html:option>
														<logic:iterate id="privince" name="pdataList">
															<html:option value="${privince.VCode}">${privince.VName}</html:option>
														</logic:iterate>
													</html:select>
												</logic:present>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">城&nbsp;&nbsp;&nbsp;市:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="3"
											class="STYLE1">
											<div align="left">

												<html:select property="city">
													<html:option value="">==请选择==</html:option>

													<html:option value="${city.VName}">${city.VName}</html:option>

												</html:select>

											</div>
										</td>
									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="3"
											class="STYLE1">
											<div align="left">
												<logic:present name="vdataList">
													<html:select property="vocation">
														<html:option value="">==请选择==</html:option>
														<logic:iterate id="vocation" name="vdataList">
															<html:option value="${vocation.name}">${vocation.name}</html:option>
														</logic:iterate>
													</html:select>
												</logic:present>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="left">
											<div align="right">
												<span class="STYLE1">客户经理:</span>
											</div>
										</td>


										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											colspan="3">
											<div align="left">
												<logic:present name="manageList">
													<html:select property="manager">
														<html:option value="">==请选择==</html:option>
														<logic:iterate id="manager" name="manageList">
															<html:option value="${manager.userid}">${manager.userid}</html:option>
														</logic:iterate>
													</html:select>
												</logic:present>


											</div>
										</td>
									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" class="STYLE1"
											align="right">
											<div align="right">
												<span class="STYLE1">集团&nbsp;&nbsp;级别:</span>
											</div>
										</td>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="7"
											class="STYLE1" align="left">
											<div align="left">
												<logic:present name="ldataList">
													<html:select property="grouplevel">
														<html:option value="">==请选择==</html:option>
														<logic:iterate id="grouplevel" name="ldataList">
															<html:option value="${grouplevel.name}">${grouplevel.name}</html:option>
														</logic:iterate>
													</html:select>
												</logic:present>
											</div>
										</td>

									</tr>

									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="8"
											class="STYLE1" align="left">
											<div align="center">
												<input type="hidden" name="task" value="groupList" />

												<html:submit property="" value="查询"></html:submit>
											</div>
										</td>

									</tr>
									<tr>
										<td width="3%" height="22" bgcolor="#FFFFFF" colspan="8"
											class="STYLE1" align="left">
											<div align="center">
												<marquee behavior="scroll" "  direction="left"
													style="overflow: hidden;">
													<font color="red" size="5">${user.username}您好！欢迎使用本系统，友情提示，本页只对有消费记录的集团进行视图查询！</font>
												</marquee>
											</div>
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

									<td width="3%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">集团编号</span>
										</div>
									</td>
									<td width="12%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">集团名称</span>
										</div>
									</td>
									<td width="8%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">所属行业</span>
										</div>
									</td>

									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">企业级别</span>
										</div>
									</td>

									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">客户经理</span>
										</div>
									</td>
									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">集团状态</span>
										</div>
									</td>
								</tr>


								<logic:present name="groupsList">
									<logic:iterate id="group" name="groupsList">
										<tr>

											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<a
														href="${pageContext.request.contextPath}/admin/groupView.do?task=countView&groupid=${group.groupid}">
														<span class="STYLE1">${group.groupid}</span> </a>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.groupname} </span>
												</div>
											</td>
											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.vocation} </span>
												</div>
											</td>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.grouplevel} </span>
												</div>
											</td>

											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<logic:empty name="group" property="manager">
														<span class="STYLE1">暂无所属的客户经理 </span>
													</logic:empty>
													<logic:notEmpty name="group" property="manager">
														<span class="STYLE1">${group.manager}</span>

													</logic:notEmpty>
												</div>
											</td>
											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1"> <logic:equal value="0"
															name="group" property="state">非潜在集团</logic:equal> <logic:equal
															value="1" name="group" property="state">潜在集团</logic:equal>
														<logic:equal value="2" name="group" property="state">正式集团</logic:equal>
														<logic:equal value="3" name="group" property="state">审核废弃集团</logic:equal>
														<logic:equal value="4" name="group" property="state">注销集团</logic:equal>
													</span>


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
												<td class="STYLE1">
													<jn0904:page name="pageUtil" />
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
