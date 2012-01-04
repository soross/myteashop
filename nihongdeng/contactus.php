<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//联系我们ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));

$contactUsInfoAll = getInfo("comm_code where type_name='ContactUsInfo'",$db,"type_value_".$currlang." as info");
$smarty->assign("contactUsInfoAll",html_entity_decode($contactUsInfoAll[info]));


//产品类型目录
$titleRow = getRows("product_type where remark='1' ",$db,"id,pid, product_type_".$currlang." as prod_type ");
$smarty->assign("titleRows",$titleRow);

$smarty->display("contactus.html");
?>
