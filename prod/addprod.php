<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$cl = getListBySql("select c.id,c.clid,c.clname,c.clgg,c.price from cl c order by c.clname,c.clid",$db);
$smarty->assign("cllist",$cl);

$job = getListBySql("select * from job j",$db);
$smarty->assign("joblist",$job);

$smarty->display("addprod.html");
?>
