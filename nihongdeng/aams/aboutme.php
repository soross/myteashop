<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$infoen = getRows(" comm_code where lang='en' and type_name='AboutUs'" ,$db," type_content ");
$infoen_str = $infoen[0];
$smarty->assign("infoen",html_entity_decode($infoen_str[type_content]));

$infocn = getRows(" comm_code where lang='zh_cn' and type_name='AboutUs'" ,$db," type_content ");
$infocn_str = $infocn[0];
$smarty->assign("infocn",html_entity_decode($infocn_str[type_content]));

//print_r($infocn[0]);

$smarty->display("aboutme.html");
?>
