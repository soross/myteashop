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
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("aboutus/flow.html");

$content = $smarty->fetch('aboutus/flow.html');
$db->makeSearchData("../aboutus/flow.php",$content);

//$filename = "flow.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";
?>
