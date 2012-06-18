<?php
if(isset($_GET[task])&&"updateRegUser"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');

	$reginfo = getListBySql("select * from boya_reg_user where id='$_GET[regid]'",$db);
	$smarty->assign("reginfo",$reginfo[0]);

	$smarty->display("updatereguser.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
