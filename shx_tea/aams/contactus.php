<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$info = getInfo(" comm_code where type_name='ContactUs'" ,$db," type_value ");
$smarty->assign("contactUsInfo",html_entity_decode($info[type_value]));


$smarty->display("contactus.html");
?>
