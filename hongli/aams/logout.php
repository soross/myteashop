<?php
if(isset($_GET[task]) && "logout"==$_GET[task]){
	if(!isset($_SESSION)){
		session_start();
	}
	setcookie('WEB_AAMS_USER_LOGIN_UID_COOKIE','',(time()+ (20*60)),'/aams/');//s
	setcookie('WEB_AAMS_USER_LOGIN_UNAME_COOKIE','',(time()+ (20*60)),'/aams/');
	setcookie('WEB_AAMS_USER_LOGIN_COOKIE','',(time()+ (20*60)),'/aams/');
	setcookie('WEB_AAMS_USER_LOGIN_ONTIME_COOKIE','',(time()+ (20*60)),'/aams/') ;
	session_destroy();

	echo "<script>window.top.close();</script>";
}
?>
