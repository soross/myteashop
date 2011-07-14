<?php
header('Content-Type: text/html; charset=gbk');
require_once ("mysql.class.php");
session_start();
if ($_POST[login]) {
	if (isset ($_POST[code]) && $_POST["code"] == $_SESSION['validationcode']) {
		$username = str_replace(" ", "", $_POST[username]);
		$query = $db->query("select * from am where am_name = '" . $username . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[am_password] : FALSE;
		if ($ps) {
			$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = $row[id];
			$_SESSION['WEB_USER_LOGIN_UID_PROWER'] = $row[am_prower];
			$_SESSION['WEB_USER_LOGIN_SESSION'] = md5($row[am_name] . $row[am_password] . "TKBK");
			$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
			echo "<script>location.href='../main.php'</script>";
		} else {
			session_destroy();
			echo "<script>location.href='../admin.php'</script>";
		}
	} else {
		session_destroy();
		echo "<script>location.href='../admin.php'</script>";
	}
}else{
	echo "<script>location.href='../admin.php'</script>";
}
?>
