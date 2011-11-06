<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//搜索不缓存
$smarty->clear_cache('video/videolist.html'); //清除index.tpl的缓存
require_once("../action/public_info.php");

/**
//获取查询条件
$key = $_GET[key];
$classcode = $_GET[classcode];

//拼装条件
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (video_name like '%$key%' or video_desc like '%$key%' or prod_summary like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and prod_class=$classcode ";
}
**/

$pagesize = 10;//一页显示多少条

//分页
$queryTotal = $db->query("select id from video" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//列表
$videoQuery = $db->query("select id,video_name,video_picture,create_date from video ".$where." order by create_date desc limit $firstcount, $displaypg ");
$videoRow = array();
while($rowR = $db->fetch_array($videoQuery)){
	$videoRow[] = $rowR;
}
$smarty->assign("videoRow",$videoRow);


//显示分页的内容
$smarty->assign("page",$pagenav);


//产品分类
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);


//标题
$smarty->assign("title","视讯中心|".$SeoTitle);
$smarty->assign("keywords","视讯中心|".$SeoKeywords);
$smarty->assign("description","视讯中心|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 视讯中心";
$smarty->assign("address",$address);

$smarty->display("video/videolist.html");
?>
