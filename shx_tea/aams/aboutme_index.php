<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("../action/mysql.class.php");

$info = getRows(" comm_code where type_name='AboutUs_Index'" ,$db," type_value,type_code");
$textInfo = $info[0];
$smarty->assign("textInfo",html_entity_decode($textInfo[type_value]));
$smarty->assign("imagesInfo",$textInfo[type_code]);


$smarty->display("aboutme_index.html");
?>
