<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//����
$smarty->assign("title","�ͻ�����|".$SeoTitle);
$smarty->assign("keywords","�ͻ�����|".$SeoKeywords);
$smarty->assign("description","�ͻ�����|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; �ͻ�����";
$smarty->assign("address",$address);

$smarty->display("aboutus/message.html");

$content = $smarty->fetch('aboutus/message.html');
$db->makeSearchData("../aboutus/message.php",$content);

//$filename = "message.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";
?>
