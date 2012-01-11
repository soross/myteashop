<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//产品类型目录
$eduTitleRow = getRows("menu where remark='PRODUCT'",$db,"id,pid,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleRows",$eduTitleRow);

if(isset($_POST[searchField])&& !empty($_POST[searchField])){
	//新闻
	$newsRow = getRows("news  order by create_date desc limit 0, 5 " ,$db);
	$smarty->assign("newsRows",$newsRow);

	$where = "(title like '%".$_POST[searchField]."%' or content like '%".$_POST[searchField]."%')  and lang='$currlang' ";
	$rows = getRows("news where ".$where,$db);

	$where2 = " (prod_name like '%".$_POST[searchField]."%' or prod_desc like '%".$_POST[searchField]."%' " .
			  " or prod_use like '%".$_POST[searchField]."%' or ingredients like '%".$_POST[searchField]."%' ) and lang='$currlang' ";
	$rows2 = getRows("product where ".$where2,$db);

	$smarty->assign("rows",$rows);
	$smarty->assign("rows2",$rows2);

}else{
	$echo = "没有查询条件....";
	$smarty->assign("echo",$echo);
}
$smarty->display("search.html");
?>
