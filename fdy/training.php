<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','196');
$smarty->assign('nav_son_style','235');

//解决方案
$sol = getObject("menu where menu_code='training'" ,$db,"`name`,`desc`,`id`,`picture`");
$smarty->assign('sol',$sol);
$son_sol = getList("menu where pid='$sol[id]' order by seq",$db,"`id`,`name`,`picture`,`desc`");
$smarty->assign('solList',$son_sol);

//相关新闻
$newsList = getList("news where typeid in(select id from menu where id =$sol[id] or pid=$sol[id] ) order by create_date desc limit 0,10",$db);
$smarty->assign('newsList',$newsList);

$smarty->display("training.htm");
?>
