<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");


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
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='prodlist.php'>��Ʒ����</a>  &gt; ��Ʒ����";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

?>
