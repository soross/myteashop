<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//左边导航
$nav_left = getRows('cp where seq is not null ',$db,"cp_info_type_".$currlang." as type");
$smarty->assign("NavLeft",$nav_left);

//联系我们ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));

//信息
$historyInfoAll = getInfo("cp where remark='History'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("HistoryInfoAll",html_entity_decode($historyInfoAll[info]));


$smarty->display("history.html");
?>
