<?php
if(isset($_GET[task])&& "toUpdateryzz"==$_GET[task]&& isset($_GET[ryzzid])&& !empty($_GET[ryzzid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$rows = getRows(" cp where remark='Honour' and seq is null ",$db);
	$smarty->assign("typeRows",$rows);

	$info = getInfo(" cp where remark='Honour' and seq is null and id='$_GET[ryzzid]'",$db);

	$smarty->assign("info",$info);

	$smarty->display("updateryzz.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
