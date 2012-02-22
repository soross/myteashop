<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','193');
$smarty->assign('nav_son_style','193');




$smarty->display("successful_case.htm");
?>

