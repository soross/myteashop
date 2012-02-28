<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','265');
$smarty->assign('nav_son_style','265');

//ÓÊ¼þ
$mail = getList("comm_code where comm_type='SupportEmail' order by id",$db);
$smarty->assign('mail',$mail);

//QQ¡¢MSN
$im = getList("comm_code where comm_type='SupportIM' order by id",$db);
$smarty->assign('im',$im);


//message
$msg = getList("message order by create_date desc limit 0,5",$db);
$smarty->assign('msg',$msg);

//doc
$doc = getList("news where remark='NEWS' order by create_date desc limit 0,10",$db,'title,src,id');
$smarty->assign('doc',$doc);

$smarty->display("support.htm");
?>

