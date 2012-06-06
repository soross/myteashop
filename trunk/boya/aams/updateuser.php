<?php
if(isset($_GET[task])&&"updateUser"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');

	$userinfo = getListBySql("select * from boya_admin_user where id='$_GET[userid]'",$db);
	$smarty->assign("userinfo",$userinfo[0]);

	$userpower = getListBySql("select * from boya_admin_user_menu where userid='$_GET[userid]'",$db);
	$smarty->assign("userpower",$userpower);

	$powerlist = getListBySql("select * from boya_admin_menu order by seq",$db);
	$smarty->assign("powerlist",$powerlist);


	$smarty->display("updateuser.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
