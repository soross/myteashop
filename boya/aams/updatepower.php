<?php
if(isset($_GET[task])&&"updatePower"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');

	$powerlist = getListBySql("select * from boya_admin_menu where pid='-1' order by seq",$db);
	$smarty->assign("power",$powerlist);

	$powerinfo = getListBySql("select * from boya_admin_menu where id='$_GET[menuid]'",$db);
	$smarty->assign("powerinfo",$powerinfo[0]);

	$smarty->display("updatepower.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
