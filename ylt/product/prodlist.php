<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//搜索不缓存
$smarty->clear_cache('prod/prodlist.html'); //清除index.tpl的缓存
require_once("../action/public_info.php");

//获取查询条件
$key = $_GET[key];
$classcode = $_GET[classcode];

//拼装条件
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (prod_name like '%$key%' or prod_desc like '%$key%' or prod_summary like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and prod_class=$classcode ";
}


$pagesize = 10;//一页显示多少条

//分页
$queryTotal = $db->query("select id from prod" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//列表
$prodQuery = $db->query("select id,prod_name,prod_picture,prod_info_url,create_date from prod ".$where." order by create_date desc limit $firstcount, $displaypg ");
$prodRow = array();
while($rowR = $db->fetch_array($prodQuery)){
	$prodRow[] = $rowR;
}
$smarty->assign("prodRow",$prodRow);


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
$smarty->assign("title","产品中心|".$SeoTitle);
$smarty->assign("keywords","产品中心|".$SeoKeywords);
$smarty->assign("description","产品中心|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 产品中心";
$smarty->assign("address",$address);

$smarty->display("prod/prodlist.html");
?>
