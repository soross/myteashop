<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getList(" type AS t where  not EXISTS( SELECT 1 from news n where n.type_id=t.id
and t.isnewslist = 0 ) and t.flag='1'",$db);
$smarty->assign("typelist",$rows);

$smarty->display("addnews.html");
?>
