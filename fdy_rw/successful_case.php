<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//$smarty->assign('nav_style','265');
//$smarty->assign('nav_son_style','193');

$caseList = getList("`case` order by create_date desc limit 0,10",$db,"id,case_name,case_pic,case_url,case_type");
$smarty->assign('caseList',$caseList);

$smarty->display("successful_case.htm");
?>

