<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getRows("comm_code where isshow>0 order by isshow ",$db);
$smarty->assign("menuRows" , $rows);

$smarty->display("nav.html");
?>
