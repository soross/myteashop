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


//产品类型目录
$titleRow = getRows("product_type where remark='1' ",$db,"id,pid, product_type_".$currlang." as prod_type ");
$smarty->assign("titleRows",$titleRow);


$where = " where lang='$currlang' ";
//类型
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$typeRow = getRows("product_type where pid='".$_GET[typeid]."' or id='".$_GET[typeid]."' ",$db,"id");
	$where = $where." and type_id in( ";
	for($i=0;$i< count($typeRow);$i++){
		$row = $typeRow[$i];
		if($i+1 == count($typeRow)){
			$where = $where."'$row[id]'";
		}else{
			$where = $where." '$row[id]', ";
		}
	}
	$where = $where.") ";
}
//关键字
if(isset($_GET['key'])&&!empty($_GET['key'])){
	$where = $where." and (product_name like '%".$_GET['key']."%' or product_desc like '%".$_GET['key']."%') ";
}

//分页
$pagesize = 12;//一页显示多少条
$queryTotal = $db->query("select id from product" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//产品
$prodRow = getRows("product ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("prodRows",$prodRow);


$smarty->display("product.html");
?>
