<?php
if(isset($_GET[jobid])&& !empty($_GET[jobid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");
	$query = $db->query("select * from job where id = '$_GET[jobid]'");
	$info = $db->fetch_array($query);
	$smarty->assign("jobinfo",$info);


	$smarty->display("updatejob.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
