<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/prod_public_info.php");
include_once("action/page.class.php");

$where = " where 1=1 ";
//����
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id = $_GET[typeid]";
}
//����
if(isset($_GET[catid])&&!empty($_GET[catid])){
	$where = $where." and type_id = $_GET[catid]";
}
//�ؼ���
if(isset($_GET['key'])&&!empty($_GET['key'])){
	$where = $where." and (prod_name like '%".$_GET['key']."%' or prod_desc like '%".$_GET['key']."%') ";
}

//��ҳ
$pagesize = 6;//һҳ��ʾ������
$queryTotal = $db->query("select id from prod" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//��Ʒ
$sql = "prod ".$where ." order by create_date desc limit $firstcount, $displaypg " ;
//print_r($sql);
$row = getRows($sql,$db);
$smarty->assign("prodRows",$row);


$smarty->display("product.htm");
?>
