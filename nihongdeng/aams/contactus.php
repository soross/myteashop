<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$infoen = getRows(" comm_code where lang='en' and type_name='ContactUs'" ,$db," type_content ");
$smarty->assign("infoen",html_entity_decode($infoen[0][type_content]));

$infocn = getRows(" comm_code where lang='zh_cn' and type_name='ContactUs'" ,$db," type_content ");
$smarty->assign("infocn",html_entity_decode($infocn[0][type_content]));

//print_r($infocn[0]);
$smarty->display("contactus.html");
?>
