<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$query = $db->query("select id,link_name,link_url from link");
$rowLink = array();
while($rowLK = $db->fetch_array($query)){
	$rowLink[] = $rowLK;
}
$smarty->assign("rowLink",$rowLink);

//����
$smarty->assign("title","��������|".$SeoTitle);
$smarty->assign("keywords","��������|".$SeoKeywords);
$smarty->assign("description","��������|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("aboutus/link.html");
?>
