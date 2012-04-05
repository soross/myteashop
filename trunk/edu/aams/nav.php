<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList("menu",$db);
$smarty->assign("menuRows" , $rows);

$smarty->display("nav.html");
?>
