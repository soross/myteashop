<?php
require_once("../action/global_action.php");



$smarty->assign("prodclass",$rowPC);
$smarty->display("config/config.html");
?>
