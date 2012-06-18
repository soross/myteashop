<?php
if(isset($_GET[task])&&"updateClass"==$_GET[task]){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');

	$classinfo = getListBySql("select * from boya_course where id='$_GET[classid]'",$db);
	$smarty->assign("classinfo",$classinfo[0]);

	$type = getListBySql("select * from boya_type where pid='2' order by seq",$db);
	$smarty->assign("type",$type);

	$smarty->display("updateclass.html");
}else{
	echo "<script>window.history.back();</script>";
}
?>
