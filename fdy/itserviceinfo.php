<?php
if(isset($_GET[itsid]) && !empty($_GET[itsid])){
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','193');
$smarty->assign('nav_son_style','235');

//具体解决方案

$sol = getObject("menu where menu_code='itservice'" ,$db,"`picture`");

$solution = getObject("menu where id='$_GET[itsid]'",$db);
$solution[fpicture]=$sol[picture];
$smarty->assign('solution',$solution);



//解决方案
$son_sol = getList("menu where pid='$solution[pid]' and id!='$solution[id]' order by seq",$db,"`id`,`name`,`picture`,`desc`");
$smarty->assign('solList',$son_sol);



//相关新闻
$newsList = getList("news where typeid in(select id from menu where id =$solution[pid] or pid=$solution[pid] ) order by create_date desc limit 0,10",$db);
$smarty->assign('newsList',$newsList);

$smarty->display("it_serviceinfo.htm");
}else{
		echo "<script>window.history.back(-1);</script>" ;
}
?>
