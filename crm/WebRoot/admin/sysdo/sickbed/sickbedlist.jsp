<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<jsp:directive.page import="com.ibatis.sqlmap.engine.scope.RequestScope" />

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

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
	html {
	SCROLLBAR-FACE-COLOR: #2372b7; /**上下箭头背景色**/ 
	SCROLLBAR-HIGHLIGHT-COLOR: #1d61a8; /**上下箭头背边框**/
	SCROLLBAR-SHADOW-COLOR: #1d61a8;  /**上下滚动边框**/
	SCROLLBAR-3DLIGHT-COLOR: #1d61a8; /**上下滚动边框**/
	SCROLLBAR-ARROW-COLOR: #ffffff; /**上下滚动边框**/
	SCROLLBAR-TRACK-COLOR: #1d61a8; /**滚动底框**/
	SCROLLBAR-DARKSHADOW-COLOR: #1d61a8;}/**上下滚动边框**/
	
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px
}

.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}

.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/testform.js"></script>

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
		
		function selectAll(bigchk){			
			var chks = document.getElementsByName("phones");
			if(bigchk.checked == true){				
				for(var i=0; i < chks.length; i++){					
					chks[i].checked =true;						
				}
			}else{
				for(var i = 0; i < chks.length; i++){
					chks[i].checked =false;
				}
			}
		}
		
		function changePChkb(chk){
			if(chk.checked == true){
				document.getElementById("ckb").checked=true;			
			}else{				
				var flag = false;
				var chks = document.getElementsByName("phones");
				for(var i = 0; i < chks.length; i++ ){
					if(chks[i].checked==true){
						flag = true;					
					}
				}
				
				if(!flag){
					document.getElementById("ckb").checked=false;
				}
			}
		}
		
		function deleteClientInfo(vphone){
			var fphone = document.all.item("phone").value;
			var address = document.all.item("address").value;
			var currpage = ${pageUtil.currentpage};
			var temp="";
			if(fphone!=""){
				temp = temp+"&fphone="+fphone;
			}
			if(address !=""){
				temp=temp + "&address="+address;
			}
			temp= temp + "&cpage="+currpage;
			location.href = "${pageContext.request.contextPath}/admin/client.do?task=deleteClientinfo&phone="+vphone+temp;
		}
		var tag =false;
		function changeTask(taskval){
			document.all.item("task").value=taskval;			
		}
		function checkArea(obj){
			if(obj.value!=""){
				if(isChinese(obj.value)){
					return true;
				}else{
					obj.value="";
					alert("地区只能为汉字！！");
					return false;
				}
			}else{
				return true;
			}
		}
		function checkPhone(obj){
			if(obj.value!=""){				
				if(isMobile(obj.value)){					
					return true;
				}else{
					obj.value="";
					alert("手机号码为13开头，且为11位！");
					return false;				
				}			
			}else{
				return true;
			}
		}
		
		
		function searchLog(){
			location.href="${pageContext.request.contextPath}/admin/client.do?task=searchGradeLog";
		}
		
		function outToExcel(tmp){
			var chks = document.getElementsByName("phones");
			for(var i = 0; i < chks.length; i++ ){
				if(chks[i].checked==true){
					tag = true;	
					break;
				}
			}			
			if(tag){
				document.getElementById("task").value=tmp;		
				clientForm.submit();
			}else{
				alert("请选择要导出的客户！！");
			}
		}
		function outAllToExcel(temp){			
			document.getElementById("task").value=temp;				
			clientForm.submit();		
		}
	</script>
</head>
<body>
	<html:form action="/admin/sickbed">
		<input type="hidden" id="task" name="task">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="30px"  background="${pageContext.request.contextPath}/admin/images/tab_05.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="30" background="${pageContext.request.contextPath}/admin/images/tab_03.gif">
								&nbsp;
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="46%" valign="middle">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="50%" class="STYLE1">
														<b>系统服务操作</b>-
														<b>病床列表</b>
													</td>
													<td width="50%" class="STYLE1"></td>
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
																		&nbsp;
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		&nbsp;
																	</div>
																</td>
															</tr>
														</table>
													</td>
													<td width="80">
														<table width="90%" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td class="STYLE1">
																	<div align="center">
																		&nbsp;
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		<a onclick="JavaScript:window.parent.dataFrame.location.href='addclass.php';" target="dataFarme"  style="cursor: hand;"><img src="${pageContext.request.contextPath}/admin/images/001.gif" width="14" height="14" border="0"/></a>[<a onclick="JavaScript:window.parent.dataFrame.location.href='addclass.php';" target="dataFarme"  style="cursor: hand;">新增</a>]
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
																		&nbsp;
																	</div>
																</td>
																<td class="STYLE1">
																	<div align="center">
																		&nbsp;
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
							<td width="16" background="${pageContext.request.contextPath}/admin/images/tab_07.gif">
							&nbsp;
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
							<td align="center">

								<table class="STYLE1">
									<tr>
										<td>
											手机号码：
										</td>
										<td>
											<html:text property="id" style="width:100px"
												onblur="checkPhone(this);"
												onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
												maxlength="11">
											</html:text>
										</td>
										<td>
											&nbsp;&nbsp;地区：
										</td>
										<td>
											<html:text property="sickbed" style="width:100px"
												maxlength="20" onblur="checkArea(this);" />
										</td>
										<td>
											等级：
										</td>
										<td>
											<html:select property="sickbed">
												<html:option value="0">=请选择=</html:option>
												<html:option value="20">砖石卡</html:option>
												<html:option value="21">金卡</html:option>
												<html:option value="22">银卡</html:option>
												<html:option value="-1">普通客户</html:option>
											</html:select>
										</td>
										<td>

											<html:submit value="查询" onclick="changeTask('clientList')"></html:submit>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<html:button property="" value="等级日志查询"
												onclick="searchLog();"></html:button>

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
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6">
									<tr>
										<td width="5%" height="22"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<input type="checkbox" id="ckb" name="ckb"
													onclick="selectAll(this);" />
											</div>
										</td>
										<td colspan="1" width="15%" height="22"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1" style="width: 75px;">ID</span>
											</div>
										</td>
										<td colspan="1" width="20%" height="22"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1" style="width: 150px;">科室部门</span>
											</div>
										</td>
										<td colspan="1" width="20%" height="22"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1" style="width: 120px;">父级科室部门</span>
											</div>
										</td>
										<td colspan="1" width="15%" height="22"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1" style="width: 120px;">添加时间</span>
											</div>
										</td>
										<td colspan="2" height="22" width="25%"
											background="${pageContext.request.contextPath}/admin/images/bg.gif"
											bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1" style="width: 230">操作</span>
											</div>
										</td>
									</tr>
									<logic:present name="sickbedList">
										<logic:empty name="sickbedList">
											<Tr>
												<td colspan="16" height="20" bgcolor="#FFFFFF"
													class="STYLE1" align="center" style="color: red">
													没有您所要查询的数据！！
												</td>
											</Tr>
										</logic:empty>
										<logic:iterate id="sickbed" name="sickbedList">

											<tr>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<input type="checkbox" name="id"
															value="${sickbed.id}" onclick="changePChkb(this);" />
													</div>
												</td>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${sickbed.id}</span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${sickbed.sickbed}</span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">
														
														</span>
													</div>
												</td>
												<td colspan="1" height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1"> <!-- bean:write name="dept"
																property="regdate" format="yyyy-MM-dd HH:mm:ss"  /--> </span>
													</div>
												</td>
												<td colspan="2" height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE4">
															<a onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dept.do?task=updateDept&deptid=${sickbed.id}';" style="cursor: hand;"><img src="${pageContext.request.contextPath}/admin/images/list.gif" width="10" height="10" border="0" /></a>[<a onclick="javascript:location.href='${pageContext.request.contextPath}/admin/dept.do?task=updateDept&deptid=${sickbed.id}';" style="cursor: hand;">详细信息</a>]
															&nbsp;&nbsp;
															<a onclick="deleteDept(${sickbed.id});" style="cursor: hand;"><img src="${pageContext.request.contextPath}/admin/images/del.gif" width="16" height="16" border="0" /></a>[<a onclick="deleteDept(${sickbed.id});" style="cursor: hand;">删除信息</a>]</span>
													</div>
												</td>
											</tr>
										</logic:iterate>
									</logic:present>

									<!-- trade -->
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
										<td class="STYLE1" align="left" width="20%">
											<html:button property="" value="批量导出"
												onclick="outToExcel('exportClient')"></html:button>
											<html:button property="" value="全部导出"
												onclick="outAllToExcel('exportAllClient')"></html:button>
										</td>
										<td align="right">
											<table border="0" align="right" cellpadding="0"
												cellspacing="0">
												<tr>
													<td class="STYLE1" align="right">
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
	</html:form>
</body>
</html:html>
