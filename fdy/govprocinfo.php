<?php
if(isset($_GET[traid]) && !empty($_GET[traid])){
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','196');
$smarty->assign('nav_son_style','235');

//具体解决方案

$sol = getObject("menu where menu_code='training'" ,$db,"`picture`");

$solution = getObject("menu where id='$_GET[traid]'",$db);
$solution[fpicture]=$sol[picture];
$smarty->assign('solution',$solution);



//解决方案
$son_sol = getList("menu where pid='$solution[pid]' and id!='$solution[id]' order by seq",$db,"`id`,`name`,`picture`,`desc`");
$smarty->assign('solList',$son_sol);



//相关新闻
$newsList = getList("news where typeid in(select id from menu where id =$solution[pid] or pid=$solution[pid] ) order by create_date desc limit 0,10",$db);
$smarty->assign('newsList',$newsList);

$smarty->display("govprocinfo.htm");
}else{
		echo "<script>window.history.back(-1);</script>" ;
}
?>
