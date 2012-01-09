<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");


$info = getInfo(" comm_code where type_name='Guide_Left'" ,$db," type_value ");
$smarty->assign("guideInfo",html_entity_decode($info[type_value]));


$smarty->display("guide_index.html");
?>
