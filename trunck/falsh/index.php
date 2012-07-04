<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />

	<title>Web 2.0 Login Form by Azmind.com</title>

	<!--- CSS --->
	<link rel="stylesheet" href="css/style.css" type="text/css" />


	<!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->

	<!--[if (gte IE 6)&(lte IE 8)]>
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/selectivizr.js"></script>
		<noscript><link rel="stylesheet" href="css/fallback.css" /></noscript>
	<![endif]-->

	</head>

	<body>
		<div id="container">
			<form action="welcome.php">
				<div class="login">LOGIN</div>
				<div class="username-text">用户名:</div>
				<div class="password-text">密码:</div>
				<div class="username-field">
					<input type="text" name="username" value="admin" />
				</div>
				<div class="password-field">
					<input type="password" name="password" value="admin" />
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住我</label>
				<div class="forgot-usr-pwd">忘记 <a href="#">用户名</a> 或 <a href="#">密码</a> ?</div>
				<input type="submit" name="submit" value="GO" />
			</form>
		</div>
		<div id="footer">
			Web Login Form by <a href="http://www.fjfdy.com">FJFDY.com</a> - <a href="http://wpa.qq.com/msgrd?v=3&uin=258372895&site=qq&menu=yes">Help it here!</a>
		</div>
	</body>
</html>
