<?php
if(!isset($_GET[newsid])||empty($_GET[newsid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/lang.class.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//ÀàÐÍÄ¿Â¼
	$titleRow = getRows("news_type",$db,"id,news_type_".$currlang." as news_type  ");
	$smarty->assign("titleRows",$titleRow);

	$newsInfo = getInfo("news where id='".$_GET[newsid]."'",$db);
	$smarty->assign("newsinfo",$newsInfo);


	$smarty->display("newsinfo.html");
}
?>
