<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}

//������������
$query = $db->query("select * from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}
$smarty->assign("prodinfo",$row);


//��Ʒ����
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//����
$smarty->assign("title",$row[prod_name]."|��Ʒ����|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|��Ʒ����|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|��Ʒ����|".$SeoDesc);




//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../product/prodlist.php'>��Ʒ����</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);

$smarty->display("prod/prodinfo.html",$_GET[id]);
?>
