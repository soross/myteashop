<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList("comm_code where comm_type='Menu'",$db);
$smarty->assign("menuRows" , $rows);

$smarty->display("nav.html");
?>
