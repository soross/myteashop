<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

if($currlang=="en"){
	include_once("action/page.class.en.php");
}else{
	include_once("action/page.class.php");
}


//类型目录
$titleRow = getRows("news_type",$db,"id,news_type_".$currlang." as news_type  ");
$smarty->assign("titleRows",$titleRow);

$where = " where lang='$currlang' ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id ='$_GET[typeid]' ";
}

if(isset($_GET['key'])&&!empty($_GET['key'])){
	$keyValue='';
	$where = $where." and (title like '%".$_GET['key']."%' or content like '%".$_GET['key']."%' or author like '%".$_GET['key']."%') ";
}

//分页
$pagesize = 8;//一页显示多少条
$queryTotal = $db->query("select id from news" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//print_r($where);
//新闻
$newsRow = getRows("news ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("newsRows",$newsRow);


$smarty->assign("lang_news",$lang[$currlang]['news']);

$smarty->display("news.html");
?>
