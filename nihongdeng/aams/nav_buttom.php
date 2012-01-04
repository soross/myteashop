<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$infoen = getRows(" comm_code where type_name='ButtomNavInfo'" ,$db," type_value_en ");
$infoen_str = $infoen[0];
$smarty->assign("infoen",html_entity_decode($infoen_str[type_value_en]));

$infocn = getRows(" comm_code where type_name='ButtomNavInfo'" ,$db," type_value_zh_cn ");
$infocn_str = $infocn[0];
$smarty->assign("infocn",html_entity_decode($infocn_str[type_value_zh_cn]));

//print_r($infocn[0]);

$smarty->display("nav_buttom.html");
?>
