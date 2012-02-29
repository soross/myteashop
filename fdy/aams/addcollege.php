<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

//college_type where id not in(select type_id from college)
$rows = getRows("college_type ",$db);
$smarty->assign("typeRows",$rows);
//print_r($rows);

$smarty->display("addcollege.html");
?>
