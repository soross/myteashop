<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/aboutus_public_info.php");

$guide  = getInfo("comm_code where type_name='Guide'",$db);
$smarty->assign("GuideInfo",html_entity_decode($guide[type_value]));

$smarty->display("guide.htm");
?>
