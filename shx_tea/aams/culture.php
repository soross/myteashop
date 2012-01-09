<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");


$info = getInfo(" comm_code where type_name='Feature'" ,$db," type_value ");
$smarty->assign("featureInfo",html_entity_decode($info[type_value]));


$smarty->display("culture.html");
?>
