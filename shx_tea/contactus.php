<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/aboutus_public_info.php");

$cu  = getInfo("comm_code where type_name='ContactUs'",$db);
$smarty->assign("ContactUsInfo",html_entity_decode($cu[type_value]));

$smarty->display("contactus.htm");
?>
