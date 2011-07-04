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
$prodQuery = $db->query("select * from prod ".$where." order by create_date desc limit $firstcount, $displaypg ");
$prodRow = array();
while($rowR = $db->fetch_array($prodQuery)){
	$prodRow[] = $rowR;
}
$smarty->assign("prodRow",$prodRow);


//显示分页的内容
$smarty->assign("page",$pagenav);


//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//标题
//$smarty->assign("title","解决方案");
$smarty->assign("title","解决方案-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","解决方案 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 解决方案";
$smarty->assign("address",$address);

$smarty->display("prod/prodlist.html");

$content = $smarty->fetch('prod/prodlist.html');
$db->makeSearchData($url."=".$page,$content);

?>
