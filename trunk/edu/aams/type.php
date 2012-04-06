<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList("type",$db);
$smarty->assign("type" , $rows);

$smarty->display("type.html");
?>
