<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//��Ʒ����
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//��ϵ������ϸ��Ϣ
$queryContactInfoAll = $db->query("select info_value from comm_info where info_type='ContactInfoAll'");
$rowContactInfoAll = $db->fetch_array($queryContactInfoAll);
$smarty->assign("contactInfoAll",$rowContactInfoAll[info_value]);

//����
$smarty->assign("title","��ϵ����|".$SeoTitle);
$smarty->assign("keywords","��ϵ����|".$SeoKeywords);
$smarty->assign("description","��ϵ����|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; ��ϵ����";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");

?>
