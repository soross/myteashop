<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}

//��������
$query = $db->query("select id,prod_name,prod_picture,case_info_url from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}
$smarty->assign("prodinfo",$row);


//��Ʒ����
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//����
$smarty->assign("title",$row[prod_name]."|�ɹ�����|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|�ɹ�����|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|�ɹ�����|".$SeoDesc);


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../case/caselist.php'>�ɹ�����</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);

$smarty->display("case/caseinfo.html",$_GET[id]);
?>
