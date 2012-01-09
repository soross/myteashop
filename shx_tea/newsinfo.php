<?php
if(isset($_GET[newsid]) && !empty($_GET[newsid])){
	include_once("action/smarty_inc.php");
	include_once("action/mysql.class.php");
	include_once("action/news_public_info.php");

	$info = getInfo("news n,news_type t where n.type_id=t.id and n.id='$_GET[newsid]'",$db,"n.*,t.type_name");
	$smarty->assign("newsinfo",$info);

	$smarty->display("newsinfo.htm");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
