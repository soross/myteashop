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
$smarty->assign("title",$row[prod_name]."|��������|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|��������|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|��������|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../product/prodlist.php'>�������</a>  &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

$content = $smarty->fetch('prod/prodorder.html');
$db->makeSearchData("../product/prodorder.php",$content);
?>
