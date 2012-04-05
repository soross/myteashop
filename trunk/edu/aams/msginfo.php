<?php
if( isset($_GET[msgid])&& !empty($_GET[msgid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$info = getObject("message where id='$_GET[msgid]'",$db);
	$smarty->assign("info",$info);

	$smarty->display("msginfo.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
