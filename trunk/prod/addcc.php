<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

if(isset($_GET[orderid])&& !empty($_GET[orderid])){
	$smarty->assign("orderid",$_GET[orderid]);
}

$stafflist = getListBySql("select id,staffid,staffname from staff order by staffname",$db);
$smarty->assign("stafflist",$stafflist);

$smarty->display("addcc.html");
?>
