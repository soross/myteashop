<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getListBySql("select * from boya_config where comm_type='ContactUs'",$db);
$smarty->assign("ContactUsInfo",$list[0]);


$conlist = getListBySql("select * from boya_config where comm_type='Contact'",$db);
$smarty->assign("ContactInfo",$conlist[0]);


$smarty->display("contactus.html");
?>
