<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$info = getInfo("comm_code where lang='$currlang' and type_name='Agent'",$db);
$smarty->assign("content",html_entity_decode($info[type_content]));

$smarty->assign("lang_company",$lang[$currlang]['company']);
$smarty->display("agent.html");
?>
