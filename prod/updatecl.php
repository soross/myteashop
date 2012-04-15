<?php
if(isset($_GET[clid])&& !empty($_GET[clid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	$info = getListBySql("select * from cl where id = $_GET[clid]",$db);
	$smarty->assign("clinfo",$info[0]);

	$smarty->display("updatecl.html");

}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
