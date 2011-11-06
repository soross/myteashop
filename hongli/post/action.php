<?php
require_once ("../action/mysql.class.php");
session_start();
if (isset ($_POST[randomCode]) && $_POST["randomCode"] == $_SESSION['validationcode']) {
	$username = str_replace(" ", "", $_POST[username]);
	$query = $db->query("select * from lm_member where mb_name = '" . $username . "'");
	$us = is_array($row = $db->fetch_array($query));
	$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
	if ($ps) {
		if($row[mb_type]==$_POST[mb_type]){
			$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = $row[id];
			$_SESSION['WEB_USER_LOGIN_UID_TYPE'] = $row[mb_type];
			$_SESSION['WEB_USER_LOGIN_SESSION'] = md5($row[mb_name] . $row[password] . "TKBK");
			$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();

			if (isset($_COOKIE["RequireUrl"])){
				$requireUrl = $_COOKIE['RequireUrl'];
				setcookie("RequireUrl", NULL);
				unset($_COOKIE);
				echo getWriteHtml($requireUrl);
				//echo "<script>alert('".getWriteHtml($requireUrl)."');</script>";
			}else{
				echo "<script>location.href='../index.php'</script>";
			}
		}else{
			session_destroy();
			echo "<script>location.href='../login.php?error=0'</script>";
		}
	} else {
		session_destroy();
		echo "<script>location.href='../login.php?error=-1'</script>";
	}
} else {
	session_destroy();
	echo "<script>location.href='../login.php?error=-2'</script>";
}
function getWriteHtml($url){
	$html='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>登入成功</title>
		<meta http-equiv="refresh" content="3;URL='.$url.'">
		<style type="text/css">
.b1 {
	height: 1px;
	font-size: 1px;
	overflow: hidden;
	display: block;
	background: #B2D0EA;
	margin: 0 3px;
	clear: both;
}

.b2 {
	height: 1px;
	font-size: 1px;
	overflow: hidden;
	display: block;
	background: #EDF7FF;
	border-right: 2px solid #B2D0EA;
	border-left: 2px solid #B2D0EA;
	margin: 0 1px;
	clear: both;
}

.b3 {
	height: 1px;
	font-size: 1px;
	overflow: hidden;
	display: block;
	background: #EDF7FF;
	border-right: 1px solid #B2D0EA;
	border-left: 1px solid #B2D0EA;
	margin: 0 1px;
	clear: both;
}

.bc {
	font-size: 12px;
	overflow: hidden;
	display: block;
	background: #EDF7FF;
	border-right: 1px solid #B2D0EA;
	border-left: 1px solid #B2D0EA;
	margin: 0 0px;
	clear: both;
}

.bt {
	background: #EDF7FF;
	margin: 0 2px;
	padding: 5px;
}

.bb {
	background: #FFFFFF;
	margin: 0 2px;
	padding: 5px;
}
.mybgcolor {
	filter:progid:DXImageTransform.Microsoft.Gradient(GradientType =   0, EndColorStr =   "#B2D0EA", StartColorStr =   "#F0F8FF")
}
</style>
</head>
	<body class="mybgcolor" style="text-align: center;">
			<div style="height: 100px;"></div>
			<div style="width: 400px;">
				<b class="b1"></b>
				<b class="b2"></b>
				<b class="b3"></b>
				<div class="bc" style="text-align: center; height: 100%">
					<div class="bt">
						<font size="2"><strong>登入成功</strong> </font>
					</div>
					<div class="bb" style="text-align: center; height: 10px"
						id="resultDiv">
						<div>
							<br>
							您已经成功登入，将再3秒后自动跳转到原来页面.<br>
							如果您的浏览器不支持自动跳转<a href="'.$url.'">请点击这里</a>
							<br>&nbsp;
						</div>
					</div>
					<div class="bt" style="height: 1%; widows: 100%;"></div>
				</div>
				<b class="b3"></b>
				<b class="b2"></b>
				<b class="b1"></b>
			</div>
	</body>
</html>

';

return $html;

}

?>
