<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$staff = getListBySql("select id,staffid,staffname from staff",$db);
$smarty->assign("stafflist",$staff);




$smarty->display("addyz.html");
?>
