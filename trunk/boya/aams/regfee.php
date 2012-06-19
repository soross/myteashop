<?php
if(isset($_GET[task])&&"regFee"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$rows = getList("boya_reg_user where id='$_GET[regid]'",$db);
	$smarty->assign("reginfo" , $rows[0]);

	$smarty->display("regfee.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
