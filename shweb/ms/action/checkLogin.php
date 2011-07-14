<?php
session_start();
if (!isset ($_SESSION['WEB_USER_LOGIN_UID_SESSION']) || !isset ($_SESSION['WEB_USER_LOGIN_SESSION']) || !isset ($_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'])) {
	session_destroy();
	Get_Return_Page('../admin.php', '登入超时，请重新登入！');
}else{
	Get_user_ontime();
}

function Get_Return_Page($url, $show = '操作已成功！') {
	echo "<script>location.href='" . $url . "';</script>";
}
/**
 * 用户登陆超时时间(秒)
 */
function Get_user_ontime() {
	$new_time = mktime();
	$onlinetime = $_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'];
	//echo ($new_time - $onlinetime ).'<br>';
	if (($new_time - $onlinetime ) > 36000000) {
		session_destroy();
		Get_Return_Page("../admin.php",'登入超时，请重新登入！');
		exit ();
	} else {
		$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
	}
}
?>
