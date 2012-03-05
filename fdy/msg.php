<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','265');
$smarty->assign('nav_son_style','265');


//message
$msg = getList("message order by create_date desc limit 0,5",$db);
$smarty->assign('msg',$msg);

//doc
$doc = getList("news where remark='NEWS' order by create_date desc limit 0,10",$db,'title,src,id');
$smarty->assign('doc',$doc);

$smarty->display("msg.htm");
?>

