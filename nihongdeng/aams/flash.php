<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getRows("comm_code where type_name='TopFlashImage' ",$db);
$smarty->assign("menuRows" , $rows);

$smarty->display("flash.html");
?>
