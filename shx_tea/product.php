<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/prod_public_info.php");
include_once("action/page.class.php");

$where = " where 1=1 ";
//类型
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id = $_GET[typeid]";
}
//类型
if(isset($_GET[catid])&&!empty($_GET[catid])){
	$where = $where." and type_id = $_GET[catid]";
}
//关键字
if(isset($_GET['key'])&&!empty($_GET['key'])){
	$where = $where." and (prod_name like '%".$_GET['key']."%' or prod_desc like '%".$_GET['key']."%') ";
}

//分页
$pagesize = 6;//一页显示多少条
$queryTotal = $db->query("select id from prod" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//产品
$sql = "prod ".$where ." order by create_date desc limit $firstcount, $displaypg " ;
//print_r($sql);
$row = getRows($sql,$db);
$smarty->assign("prodRows",$row);


$smarty->display("product.htm");
?>
