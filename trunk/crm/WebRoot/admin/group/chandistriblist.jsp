<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


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
		
		//
			function selectChild(){
			var parenttr=document.getElementById("parenttr");
			var childtr=document.getElementsByName("childtr");
			for(var i=0;i<childtr.length;i++) {
				childtr[i].checked=parenttr.checked;
			}
		}
		function selectParent(){
			var pag=false;
			var parenttr=document.getElementById("parenttr");
			var childtr=document.getElementsByName("childtr");
			for(var i=0;i<childtr.length;i++){
				if(childtr[i].checked){
					pag=true;
					break;
				}
			}
			if(pag) {
				parenttr.checked="checked";
			} else {
				parenttr.checked="";
			}
		}
				function distribute(){
				var b = false;
				var boxd = document.getElementsByName("childtr");
				for(var i=0;i<boxd.length;i++) {
					if(boxd[i].checked){
						b = true;
						break;
						
					}
				}
				if(!b){
					alert("请选中要调配的集团");
				}
		
				return b;
			}
		function seachList(){
		
		var form =document.all.form2;
	    form.action="${pageContext.request.contextPath}/admin/groupDistribute.do?task=hasDistributeList";
		form.submit();
		
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
													当前位置：集团已分配列表
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
						<td align="center">
							<html:form action="/admin/groupDistribute" styleId="form2">
								<table>
									<tr>
										<td height="20" bgcolor="#FFFFFF" class="STYLE1">
											<div align="center">
												集团号
												<html:text property="groupid" maxlength="20"></html:text>
												集团名
												<html:text property="groupname" maxlength="50"></html:text>

												<logic:present name="manageList">
												经理<html:select property="manager">
														<html:option value="">==请选择==</html:option>
														<logic:iterate id="manager" name="manageList">
															<html:option value="${manager.userid}">${manager.userid}</html:option>
														</logic:iterate>
													</html:select>
												</logic:present>
												<html:submit value="查询" onclick="seachList();"></html:submit>

											</div>
										</td>

									</tr>
								</table>
							</html:form>
						</td>

						<html:form action="/admin/groupDistribute" styleId="form1"
							onsubmit="return distribute();">
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="b5d6e6">

								<tr>
									<td width="3%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<html:multibox property="selects" value="0"
												styleId="parenttr" onclick="selectChild();"></html:multibox>
										</div>
									</td>
									<td width="3%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">编号</span>
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
											<span class="STYLE1">县市</span>
										</div>
									</td>

									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">集团状态</span>
										</div>
									</td>
									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">客户经理</span>
										</div>
									</td>


								</tr>
								<logic:empty name="groupsList">


									<tr>
										<td colspan="8" align="center"  bgcolor="#FFFFFF">
											暂无此条件的数据
										</td>
									</tr>
								</logic:empty>
								<logic:present name="groupsList">
									<logic:iterate id="group" name="groupsList">
										<tr>
											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<html:multibox property="selects" styleId="childtr"
														value="${group.groupid}" onclick="selectParent();"></html:multibox>
												</div>
											</td>

											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.groupid}</span>
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

											<td height="20" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.city} </span>
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
											<td height="10" bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">${group.manager} </span>

												</div>
											</td>

										</tr>
									</logic:iterate>
								</logic:present>
								<tr>
									<td height="20" bgcolor="#FFFFFF" colspan="8" class="STYLE1">
										<div align="center">
											调配选中集团给客户经理：
											<logic:present name="manageList">
												<html:select property="manager">
													<html:option value="">==请选择==</html:option>
													<logic:iterate id="manager" name="manageList">
														<html:option value="${manager.userid}">${manager.userid}</html:option>
													</logic:iterate>
												</html:select>
												<input type="hidden" name="task" value="changeManage">
												<html:submit value="提交"></html:submit>

											</logic:present>
										</div>
									</td>
								</tr>
							</table>
						</html:form>
				</table>
			</td>
		</tr>
		<tr>
			<td height="35"
				background="${pageContext.request.contextPath}/admin/images/tab_19.gif">

			</td>
		</tr>
	</table>
</body>
</html:html>
