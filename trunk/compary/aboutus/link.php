<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$query = $db->query("select * from link");
$rowLink = array();
while($rowLK = $db->fetch_array($query)){
	$rowLink[] = $rowLK;
}
$smarty->assign("rowLink",$rowLink);

//����
$smarty->assign("title","��������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","�������� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("aboutus/link.html");
$content = $smarty->fetch('aboutus/link.html');
$db->makeSearchData("../aboutus/link.php",$content);

//$filename = "link.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";
?>
