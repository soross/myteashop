<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//搜索不缓存
$smarty->clear_cache('news/newslist.html'); //清除index.tpl的缓存
require_once("../action/public_info.php");

//获取查询条件
$key = $_GET[key];
$classcode = $_GET[classcode];

//拼装条件
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (title like '%$key%' or content like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and news_class=$classcode ";
}


$pagesize = 8;//一页显示多少条

//分页
$queryTotal = $db->query("select id from news" .$where);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select id,title,create_date,news_info_url from news ".$where." order by create_date desc limit $firstcount, $displaypg ");
$newsRow = array();
while($rowR = $db->fetch_array($newsQuery)){
	$newsRow[] = $rowR;
}
$smarty->assign("newsRow",$newsRow);

//新闻类型
$newsClassQuery = $db->query("select id,class_name,url from news_class");
$newsClassRow = array();
while($rowCR = $db->fetch_array($newsClassQuery)){
	$newsClassRow[] = $rowCR;
}
$smarty->assign("newsClassRow",$newsClassRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

//标题
$smarty->assign("title","新闻动态|".$SeoTitle);
$smarty->assign("keywords","新闻动态|".$SeoKeywords);
$smarty->assign("description","新闻动态|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 新闻动态";
$smarty->assign("address",$address);

$smarty->display("news/newslist.html");

$content = $smarty->fetch('news/newslist.html');
$db->makeSearchData($url."=".$page,$content);
?>
