<?php
if(isset($_GET[picid])&&!empty($_GET[picid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$piclist = getListBySql("select * from boya_news where id='$_GET[picid]'",$db);
	$smarty->assign("picinfo",$piclist[0]);


	$smarty->display("updatepic.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
