<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$logoList = getList(" link " ,$db);
$smarty->assign("logoList",$logoList);

$smarty->display("link.html");
?>
