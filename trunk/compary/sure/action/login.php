<?php
header('Content-Type: text/html; charset=gbk');
require_once ("../../action/mysql.class.php");
session_start();
//act=checkRandomCode&randomCode=
if(isset($_POST[act])&&!empty($_POST[act]) && "checkRandomCode"==$_POST[act]){
	if($_SESSION[validationcode] == $_POST[randomCode]){
		echo "OK";
	}else{
		echo "ERROR+".$_SESSION[validationcode]."+".$_POST[randomCode];
	}
}else if(isset($_POST[act])&&!empty($_POST[act]) && "login"==$_POST[act]){
	if (isset ($_POST[code]) && $_POST["code"] == $_SESSION['validationcode']) {
		session_start();
		$username = str_replace(" ", "", $_POST[username]);
		$query = $db->query("select * from cust where cust_name = '" . $username . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps) {
			$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = $row[id];
			$_SESSION['WEB_USER_LOGIN_SESSION'] = md5($row[username] . $row[password] . "TKBK");
			$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
			echo "OK";
		} else {
			session_destroy();
			echo "ERROR-100";//用户名密码错误!
		}
	} else {
		echo "ERROR-001";//验证码错误!
	}
}
?>
