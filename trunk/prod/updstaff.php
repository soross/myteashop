<?php
if(isset($_GET[upd_id])&& !empty($_GET[upd_id])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select * from staff where id = '$_GET[upd_id]'");
	$info = $db->fetch_array($query);
	$smarty->assign("staffinfo",$info);

	$gwlist = getListBySql("select * from gw order by gwname",$db);
	$smarty->assign("gwlist",$gwlist);

	$smarty->display("updstaff.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
