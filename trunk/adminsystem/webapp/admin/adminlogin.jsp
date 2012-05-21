<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理员登陆</title>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}

.submitButton {
	BORDER-RIGHT: #7EBF4F 1px solid;
	PADDING-RIGHT: 2px;
	BORDER-TOP: #7EBF4F 1px solid;
	PADDING-LEFT: 2px;
	FONT-SIZE: 12px;
	FILTER: progid : DXImageTransform . Microsoft .
		Gradient(GradientType = 0, StartColorStr = #ffffff, EndColorStr =
		#B3D997);
	BORDER-LEFT: #7EBF4F 1px solid;
	CURSOR: hand;
	COLOR: black;
	PADDING-TOP: 2px;
	BORDER-BOTTOM: #7EBF4F 1px solid
}

.STYLE3 {
	color: #528311;
	font-size: 12px;
}

.STYLE4 {
	color: #42870a;
	font-size: 12px;
}
-->
</style>
	</head>

	<body onload="javascript:document.getElementById('username').focus();">
		<form action="adminlogin" method="post" id="loginForm"
			name="adminLoginForm">
			<table width="100%" height="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td bgcolor="#e5f6cf">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="608" background="images/login_03.gif">
						<table width="862" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="266" background="images/login_04.gif">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td height="95">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="424" height="95" background="images/login_06.gif">
												&nbsp;
											</td>
											<td width="183" background="images/login_07.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">

													<tr>
														<td width="30%" height="20">
															<div align="center">
																<span class="STYLE3">用&nbsp;&nbsp;户</span>
															</div>
														</td>
														<td width="70%" height="20">
															<input type="text" id="adminName" name="adminName" maxlength="50" value="root"
																style="height: 18px; width: 100px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;"></input>
															<font style="color: red;">*</font>
														</td>
													</tr>
													<tr>
														<td height="20">
															<div align="center">
																<span class="STYLE3">密&nbsp;&nbsp;码</span>
															</div>
														</td>
														<td height="20">
															<input type="password" id="adminPassword" name="adminPassword" maxlength="50" value="1234"
																style="height: 18px; width: 100px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;">
															<font style="color: red;">*</font>
														</td>
													</tr>
													<tr>
														<td height="20">
															<div align="center">
																<span class="STYLE3">验证码</span>
															</div>
														</td>
														<td height="20">
															<table border="0" align="left" cellpadding="0"
																cellspacing="0">
																<tr>
																	<td>
																		<input type="text" id="randomCode" name="randomCode" maxlength="4" 
																			style="height: 18px; width: 45px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;">
																	</td>
																	<td>&nbsp;<img src="random.jsp"
																			onclick="reloadRandomCode('randomcodeimg')"
																			alt="看不清楚,点击刷新" id="randomcodeimg"
																			style="cursor: pointer;">
																	</td>
																	<td>&nbsp;<font style="color: red;">*</font></td>
																</tr>
															</table>
															
														</td>
													</tr>
													<tr>
														<td height="30">
															&nbsp;
														</td>
														<td height="30">
															<img src="images/dl.gif" width="81" height="23"
																border="0" usemap="#Map">
															<input type="hidden" id="task" name="task" value="Login">
														</td>
													</tr>

												</table>
											</td>
											<td width="255" background="images/login_08.gif">
												&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="247" valign="top" background="images/login_09.gif">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="22%" height="30">
												&nbsp;
											</td>
											<td width="56%">
												&nbsp;
											</td>
											<td width="22%">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
											<td height="30">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="44%" height="20">
															&nbsp;
														</td>
														<td width="56%" class="STYLE4">
															版本 2012-V1.0
														</td>
													</tr>
												</table>
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgcolor="#a2d962">

					</td>
				</tr>
			</table>
			<map name="Map">
				<area shape="rect" coords="3,3,36,19" href="javascript:submitForm()">
				<area shape="rect" coords="40,3,78,18" href="javascript:resetForm()">
			</map>
		</form>
	</body>
	<script>
	function resetForm(){
		document.getElementById('loginForm').reset();
	}
	function submitForm(){
		document.getElementById('loginForm').submit();
	}

	function reloadRandomCode(vid){
		document.getElementById(vid).src="random.jsp?"+Math.round(Math.random()*1000000);
	}

</script>














	<!-- 
  
  <body background="share/images/background.jpg">
   <center>
	    <h2>管理员登陆</h2>
	   <form name="adminLoginForm" action="adminlogin" method="post">
       <table>
          <tr>
          <td>用户名:</td>
	      <td><input type="text" name="adminName" ></input></td>
	      </tr>
	      <tr>
	      <td>密码:</td>
	      <td><input type="text" name="adminPassword" ></input></td>
	      </tr>
	      <tr>
	      <td  align="center">
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="submit" name="loginadmin" value="登陆"></input>
	     </td>
	     <td  align="center">
	     <input type="reset" name="reset" value="重置"></input>
	     </td>
	     </tr>
	   </table>
    </form>
    </center>
  </body> -->
</html>
