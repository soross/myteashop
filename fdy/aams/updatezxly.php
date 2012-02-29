<?php
if(isset($_GET[task])&& "toUpdatezxly"==$_GET[task]&& isset($_GET[zxlyid])&& !empty($_GET[zxlyid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");


	$info = getInfo("dlzxly where id='$_GET[zxlyid]'",$db);

	$smarty->assign("info",$info);

	$smarty->display("lookzxly.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
