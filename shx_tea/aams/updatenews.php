<?php
if(isset($_GET[newsid])&& !empty($_GET[newsid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select * from news where id = '$_GET[newsid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("newsinfo",$info);

	$rows = getRows("  news_type order by seq ",$db);
	$smarty->assign("typeRows",$rows);

	$smarty->display("updatenews.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
