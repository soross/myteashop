<?php
if(isset($_GET[collegeid])&& !empty($_GET[collegeid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select * from college where id = '$_GET[collegeid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("newsinfo",$info);

	$rows = getRows(" college_type ",$db);
	$smarty->assign("typeRows",$rows);

	$smarty->display("updatecollege.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
