<?php
require_once("action/checkAamsLogin.php");
if(isset($_GET[task]) && "toUpdateNav"==$_GET[task]){
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$info = getInfo("menu where id ='".$_GET[navid]."' ",$db);

	$smarty->assign("menuInfo" , $info);

	$rows = getRows("menu",$db);
	$smarty->assign("menuRows" , $rows);

	$smarty->display("editnav.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}


?>
