<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//��ϵ����ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));

$cultureInfoAll = getInfo("cp where remark='Culture'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("CultureInfoAll",html_entity_decode($cultureInfoAll[info]));


$smarty->display("culture.html");
?>
