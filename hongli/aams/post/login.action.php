<?php
if(!isset($_SESSION)){
	session_start();
}
if(isset($_POST['task']) && "Login"==$_POST['task']){
	require_once ("../action/mysql.class.php");
	$username = str_replace(" ", "", $_POST[username]);
	$query = $db->query("select * from lm_aams_user where username = '" . $username . "'");
	$us = is_array($row = $db->fetch_array($query));
	$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
	if ($ps) {
		$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] = $row[id];
		$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'] = $row[username];
		$_SESSION['WEB_AAMS_USER_LOGIN_SESSION'] = md5($row[username] . $row[password] . "TKBK");
		$_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'] = mktime();

		setcookie('WEB_AAMS_USER_LOGIN_UID_COOKIE',$row[id],(time()+ (20*60)),'/aams/');
		setcookie('WEB_AAMS_USER_LOGIN_UNAME_COOKIE', $row[username] ,(time()+ (20*60)),'/aams/');
		setcookie('WEB_AAMS_USER_LOGIN_COOKIE',md5($row[username] . $row[password] . "TKBK"),(time()+ (20*60)),'/aams/');
		setcookie('WEB_AAMS_USER_LOGIN_ONTIME_COOKIE',mktime(),(time()+ (20*60)),'/aams/') ;

		header("location: ../main.php");
		//echo "<script>location.href=''</script>";
	} else {
		session_destroy();
		echo "<script>alert('密码错误!');location.href='../admin.php'</script>";
	}
}else{
	echo "<script>alert('非法提交!');location.href='../admin.php'</script>";
}
?>
