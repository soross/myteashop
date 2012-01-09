<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/aboutus_public_info.php");

$feature  = getInfo("comm_code where type_name='Feature'",$db);
$smarty->assign("FeatureInfo",html_entity_decode($feature[type_value]));

$smarty->display("feature.htm");
?>
