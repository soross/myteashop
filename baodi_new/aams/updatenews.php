<?php
if(isset($_GET[newsid])&& !empty($_GET[newsid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select n.*,DATE_FORMAT(n.create_date,'%Y-%m-%d') as create_dates from news n where n.id = '$_GET[newsid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("newsinfo",$info);

	$rows = getRows(" menu where remark='NEWS' ",$db);
	$smarty->assign("typeRows",$rows);

	$smarty->display("updatenews.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
