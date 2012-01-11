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
	$eduTitleRow = getRows("menu where remark='NEWS'",$db,"id,pid,menu_name_".$currlang." as menu_name  ");
	$smarty->assign("titleRows",$eduTitleRow);

	$newsInfo = getInfo("news where id='".$_GET[newsid]."'",$db);
	$smarty->assign("newsinfo",$newsInfo);



	$smarty->display("newsinfo.html");
}
?>
