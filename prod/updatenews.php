<?php
if(isset($_GET[newsid])&& !empty($_GET[newsid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select n.* from news n where n.id = '$_GET[newsid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("newsinfo",$info);

	$rows = getList(" menu ",$db);
	$smarty->assign("typeRows",$rows);

	$smarty->display("updatenews.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
