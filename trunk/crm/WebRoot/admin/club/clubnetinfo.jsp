<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>俱乐部的网点信息</title>

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
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>
	<script>
		var  highlightcolor='#c1ebff';
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
	<script type="text/javascript">
      function child(parent){   
        var pid=parent.value;
        var chks=document.getElementsByName("menus");
        for(var i=0;i<chks.length;i++){
         if(parent.checked==true){//如果父类选中,则所有子类全部选中
            if(chks[i].id==pid){
              chks[i].checked=true;
            }
         }else{
            if(chks[i].id==pid){
              chks[i].checked=false;
            }
         }
      }   
    }
    
    function parent(child){
      var pid=child.id;//获取父类ID
      var chks=document.getElementsByName("menus");
      var flag=false;
      if(child.checked==true){//如果选中子类,则父类也选中
         for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=true;
               flag=true;
            }
         }
      }else{
         for(var i=0;i<chks.length;i++){
            if(chks[i].checked==true&& chks[i].id==pid){
               flag=true;
               break;
            }
         }
      }
      if(!flag){
        for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=false;
            }
         }
      }  
    }
    
    function subAdd(task){
       document.all.item("task").value=task;
       clubnetworkForm.submit();
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

													当前位置:网点信息

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

																</div>
															</td>
															<td class="STYLE1">
																<div align="center"></div>
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
						<td align="center">
							<html:form action="admin/clubnetwork">
								<html:hidden property="clubnetId" />
								<input type="hidden" name="task">
								<table width="75%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6" class="STYLE1">
									<tr height="30">
										<td bgcolor="#FFFFFF" align="center" colspan="2"
											style="font-size:14;">
											<b>俱乐部的网点信息</b>
										</td>

									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											网点地址：
										</td>
										<td bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">
											&nbsp;${clubinfo.clubnetAddr}

										</td>
									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											网点类型：
										</td>
										<td bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">
											<logic:present name="clubtypelist">
												<logic:iterate id="type" name="clubtypelist">
													<logic:equal value="${clubinfo.clubnetType}" name="type"
														property="id">&nbsp;${type.name}</logic:equal>
												</logic:iterate>
											</logic:present>
										</td>

									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											网点内容：
										</td>
										<td bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">
											&nbsp;${clubinfo.clubnetConten}
										</td>
									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											网点级别：
										</td>
										<td bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">


											<logic:present name="clublelist">
												<logic:iterate id="level" name="clublelist">
													<logic:equal value="${clubinfo.clubnetLevel}" name="level"
														property="id">&nbsp;${level.name}</logic:equal>
												</logic:iterate>
											</logic:present>

										</td>
									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											管&nbsp;理&nbsp;员：
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">
											&nbsp;${clubinfo.clubnetManger}

										</td>
									</tr>
									<tr height="20">
										<td bgcolor="#FFFFFF" align="right" width="500"
											style="font-size:14;">
											网点电话：
										</td>
										<td bgcolor="#FFFFFF" align="left" width="500"
											style="font-size:14;">
											&nbsp;${clubinfo.clubnetTelnum}

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
						<td colspan="6" bgcolor="#FFFFFF" align="center">
							<html:button property="" value="返回"
								onclick="javaScript:history.back();"></html:button>
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
