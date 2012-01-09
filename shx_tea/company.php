<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/aboutus_public_info.php");

$company  = getInfo("comm_code where type_name='Company'",$db);
$smarty->assign("CompanyInfo",html_entity_decode($company[type_value]));


$smarty->display("company.htm");
?>
