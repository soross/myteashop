<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList(" menu order by seq",$db);
$smarty->assign("typeRows",$rows);

$smarty->display("addnews.html");
?>
