<?php
if(isset($_GET[newsid])&& !empty($_GET[newsid])){
	require_once("action/checkAamsLogin.php");
	require_once("../action/smarty_inc.php");
	require_once("../action/mysql.class.php");
	$query = $db->query("select * from lm_news where id = '$_GET[newsid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("LoginUserName",$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']);
	$smarty->assign("newsinfo",$info);
	$smarty->display("aams/updatenews.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
