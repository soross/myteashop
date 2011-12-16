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
	$titleRow = getRows("product_type where remark='1' ",$db,"id,pid, product_type_".$currlang." as prod_type ");
	$smarty->assign("titleRows",$titleRow);


	$prodInfo = getInfo("product where id='".$_GET[prodid]."'",$db);
	$smarty->assign("prodinfo",$prodInfo);

	$smarty->assign("lang_product",$lang[$currlang]['product']);

	$smarty->display("productinfo.html");
}
?>
