<?php
if(isset($_GET[task])&& "toUpdateenv"==$_GET[task]&& isset($_GET[envid])&& !empty($_GET[envid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$rows = getRows(" cp where remark='DeviceContext' and seq is null ",$db);
	$smarty->assign("typeRows",$rows);

	$info = getInfo(" cp where remark='DeviceContext' and seq is null and id='$_GET[envid]'",$db);

	$smarty->assign("info",$info);

	$smarty->display("updateenv.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
