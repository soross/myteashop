<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//����
$smarty->assign("title","��������|".$SeoTitle);
$smarty->assign("keywords","��������|".$SeoKeywords);
$smarty->assign("description","��������|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; ��˾ר��";
$smarty->assign("address",$address);

$smarty->display("aboutus/flow.html");
?>
