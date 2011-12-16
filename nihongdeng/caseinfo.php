<?php
if(!isset($_GET[caseid])||empty($_GET[caseid])){
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


	$prodInfo = getInfo("obj_case where id='".$_GET[caseid]."'",$db);
	$smarty->assign("caseinfo",$prodInfo);

	$smarty->assign("lang_case",$lang[$currlang]['case']);

	$smarty->display("caseinfo.html");
}
?>
