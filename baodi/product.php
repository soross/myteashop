<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");

//��Ʒ����Ŀ¼
$eduTitleRow = getRows("menu where remark='PRODUCT'",$db,"id,pid,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleRows",$eduTitleRow);




$where = " where lang='$currlang' ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$typeRow = getRows("menu where pid='".$_GET[typeid]."' or id='".$_GET[typeid]."' ",$db,"id");
	//print_r($typeRow);
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

//��ҳ
$pagesize = 8;//һҳ��ʾ������
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
