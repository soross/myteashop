<?php
if(isset($_GET[task])&& "toUpdateCase"==$_GET[task]&& isset($_GET[caseid])&& !empty($_GET[caseid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$info = getObject("`case` where id='$_GET[caseid]'",$db);
	$smarty->assign("info",$info);

	$smarty->display("editcase.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
