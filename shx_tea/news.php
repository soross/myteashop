<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/news_public_info.php");
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
	$where = $where." and (title like '%".$_GET['key']."%' or content like '%".$_GET['key']."%') ";
}

//��ҳ
$pagesize = 8;//һҳ��ʾ������
$queryTotal = $db->query("select id from news" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//��Ʒ
$sql = "news ".$where ." order by create_date desc limit $firstcount, $displaypg " ;
//print_r($sql);
$row = getRows($sql,$db);
$smarty->assign("newsRows",$row);

$smarty->display("news.htm");
?>
