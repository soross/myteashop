<?php
if(isset($_GET[prodid]) && !empty($_GET[prodid])){
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','212');
$smarty->assign('nav_son_style','235');

//����������

$sol = getObject("menu where menu_code='product'" ,$db,"`picture`");

$solution = getObject("menu where id='$_GET[prodid]'",$db);
$solution[fpicture]=$sol[picture];
$smarty->assign('solution',$solution);



//�������
$son_sol = getList("menu where type='$solution[type]' and pid='$solution[pid]' and id!='$solution[id]' order by seq",$db,"`id`,`name`,`picture`,`desc`");
$smarty->assign('solList',$son_sol);



//�������
$newsList = getList("news where typeid ='$_GET[prodid]' order by create_date desc limit 0,10",$db);
$smarty->assign('newsList',$newsList);

$smarty->display("prodinfo.htm");
}else{
		echo "<script>window.history.back(-1);</script>" ;
}
?>