<?php
if(isset($_GET[newsid])&& !empty($_GET[newsid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select n.* from news n where n.id = '$_GET[newsid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("newsinfo",$info);

	//not EXISTS( SELECT 1 from news n where n.type_id=t.id and t.isnewslist = 0 ) and
	$rows = getList(" type AS t where  t.flag='1'",$db);
	$smarty->assign("typelist",$rows);

	$smarty->display("updatenews.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
