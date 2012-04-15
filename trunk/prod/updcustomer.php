<?php
if(isset($_GET[c_id])&& !empty($_GET[c_id])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select c.* from customer c where c.id = '$_GET[c_id]'");
	$info = $db->fetch_array($query);
	$smarty->assign("cinfo",$info);
	$smarty->display("updcustomer.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
