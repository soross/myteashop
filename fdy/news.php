<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','197');
$smarty->assign('nav_son_style','235');

$smarty->display("news.htm");
?>
