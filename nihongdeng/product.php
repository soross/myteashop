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


//��Ʒ����Ŀ¼
$titleRow = getRows("product_type where remark='1' ",$db,"id,pid, product_type_".$currlang." as prod_type ");
$smarty->assign("titleRows",$titleRow);


$where = " where lang='$currlang' ";
//����
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
//�ؼ���
if(isset($_GET['key'])&&!empty($_GET['key'])){
	$where = $where." and (product_name like '%".$_GET['key']."%' or product_desc like '%".$_GET['key']."%') ";
}

//��ҳ
$pagesize = 12;//һҳ��ʾ������
$queryTotal = $db->query("select id from product" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//��Ʒ
$prodRow = getRows("product ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("prodRows",$prodRow);


$smarty->display("product.html");
?>
