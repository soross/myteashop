<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//����
$smarty->assign("title","��˾�Ļ�|".$SeoTitle);
$smarty->assign("keywords","��˾�Ļ�|".$SeoKeywords);
$smarty->assign("description","��˾�Ļ�|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ��˾�Ļ�";
$smarty->assign("address",$address);

$smarty->display("aboutus/culture.html");

//$content = $smarty->fetch('aboutus/culture.html');
//$db->makeSearchData("../aboutus/culture.php",$content);
?>
