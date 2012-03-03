<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList("college_type ",$db);
$smarty->assign("typeRows",$rows);
//print_r($rows);

$smarty->display("collegetype.html");
?>
