<?php
if(isset($_GET[task])&&"regUserInfo"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');

	$reginfo = getListBySql("select ru.* from boya_reg_user ru where ru.id='$_GET[regid]'",$db);
	$smarty->assign("reginfo",$reginfo[0]);

	$smarty->display("reguserinfo.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
