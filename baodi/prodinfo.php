<?php
if(!isset($_GET[prodid])||empty($_GET[prodid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/lang.class.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//产品类型目录
	$eduTitleRow = getRows("menu where remark='PRODUCT'",$db,"id,pid,menu_name_".$currlang." as menu_name  ");
	$smarty->assign("titleRows",$eduTitleRow);

	$prodInfo = getInfo("product where id='".$_GET[prodid]."'",$db);
	$smarty->assign("prodinfo",$prodInfo);

	$smarty->assign("lang_product",$lang[$currlang]['product']);

	$smarty->display("prodinfo.html");
}
?>
