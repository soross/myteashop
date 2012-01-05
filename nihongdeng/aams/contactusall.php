<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$infoen = getRows(" comm_code where type_name='ContactUsInfo'" ,$db," type_value_en ");
$smarty->assign("infoen",html_entity_decode($infoen[0][type_value_en]));

$infocn = getRows(" comm_code where type_name='ContactUsInfo'" ,$db," type_value_zh_cn ");
$smarty->assign("infocn",html_entity_decode($infocn[0][type_value_zh_cn]));

//print_r($infocn[0]);
$smarty->display("contactusall.html");
?>
