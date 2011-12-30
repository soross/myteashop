<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getRows(" news_type where pid=0 ",$db);
$smarty->assign("typeRows",$rows);

$smarty->display("addjob.html");
?>
