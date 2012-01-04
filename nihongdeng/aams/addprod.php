<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getRows("product_type where remark='1'",$db);
$smarty->assign("typeRows",$rows);

$smarty->display("addprod.html");
?>
