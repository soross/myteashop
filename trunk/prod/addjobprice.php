<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$prodlist = getListBySql("select id,prodid from prod order by prodid",$db);
$smarty->assign("prodlist",$prodlist);


$joblist = getListBySql("select id,jobname from job order by id",$db);
$smarty->assign("joblist",$joblist);

$smarty->display("addjobprice.html");
?>
