<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//��ϵ����ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);

$aboutUsInfoAll = getInfo("cp where remark='AboutUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("AboutUsInfoAll",$aboutUsInfoAll[info]);


$smarty->display("aboutus.html");
?>
