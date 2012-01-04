<?php
if(isset($_GET[caseid])&& !empty($_GET[caseid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select * from obj_case where id = '$_GET[caseid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("caseinfo",$info);


	$smarty->display("updatecase.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
