<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//联系我们ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);

$contactUsInfoAll = getInfo("comm_code where type_name='ContactUsInfo'",$db,"type_value_".$currlang." as info");
$smarty->assign("contactUsInfoAll",$contactUsInfoAll[info]);


$smarty->display("contactus.html");
?>
