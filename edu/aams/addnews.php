<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList(" type where flag='1'",$db);
$smarty->assign("typeRows",$rows);

$smarty->display("addnews.html");
?>