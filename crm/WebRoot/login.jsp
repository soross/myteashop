<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>CRM登入</title>

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
			background-color: #016aa9;
			overflow:hidden;
		}
		.STYLE1 {
			color: #000000;
			font-size: 12px;
		}
		-->	
	</style>
	<script type="text/javascript">
		//刷新验证码
		function reloadcode(obj){	    
			obj.setAttribute('src','img2.jsp?'+Math.random());	   
		}
	</script>

</head>
<body style="margin:0"><br>	
	<!--
	<div style="position: absolute; width: 100px; height: 80px; z-index: 1;margin-left: 36%;margin-top:17%">
		<object id="obj1" border="0" width="400px" height="117px">
			<embed src="images/flash.swf"
				type="application/x-shockwave-flash" name="obj1" width="400px"
				height="117px" quality="High" wmode="transparent">
		</object>
	</div>	 -->
	<html:form action="login?task=login">
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td>					
					<table width="962" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="235" background="images/login_03.gif">
								&nbsp;								
							</td>
						</tr>
						<tr>
							<td height="53">								
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>										
										<td width="394" height="53" background="images/login_05.gif">
											&nbsp;
										</td>
										<td width="206" background="images/login_06.gif">											
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="16%" height="25">
														<div align="right">
															<span class="STYLE1">用户名</span>
														</div>
													</td>
													<td width="57%" height="25">
														<div align="center">
															<html:text property="userId" value="admin"
																style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff"></html:text>
														</div>
													</td>
												</tr>
												<tr>
													<td height="25">
														<div align="right">
															<span class="STYLE1">密&nbsp;&nbsp;码</span>
														</div>
													</td>
													<td height="25">
														<div align="center">
															<html:password property="password" value="888888"
																style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff"></html:password>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td width="362" background="images/login_07.gif">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="213" background="images/login_08.gif" valign="top">
								<div style="margin-left: 404px">
									<table cellpadding="0" cellspacing="0">
										<tr>
											<td height="25">
												<div align="right">
													<span class="STYLE1">验证码</span>
												</div>
											</td>
											<td height="25">
												<div align="center" style="margin-left:28px">
													<html:text  property="code" maxlength="4" onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
														style="width:45px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff"></html:text>
													<img src="img2.jsp" style="width:50px; height:17px; vertical-align:middle;" onclick="reloadcode(this);">
													<html:submit value="登录"></html:submit>
												</div>
												
												
												
											</td>
										</tr>
										<tr>
										   <td colspan="2" align="center">
										   <br>
										   <br>
										   <div style="font-size: 12px;color:red">
												<html:errors property="message" />
					                            <html:messages id="inf" message="true" property="msg"></html:messages>
					                             ${inf}
					                             </div></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</html:form>
</body>
</html:html>
