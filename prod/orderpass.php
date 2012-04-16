<?php
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");

	$userid = $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'];
	$smarty->assign("userid",$userid);

	//print_r($userid);

	$smarty->display("orderpass.html");
?>
