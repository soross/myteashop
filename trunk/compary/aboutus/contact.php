<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//��Ʒ����
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//��ϵ������ϸ��Ϣ
$queryContactInfoAll = $db->query("select * from comm_info where info_type='ContactInfoAll'");
$rowContactInfoAll = $db->fetch_array($queryContactInfoAll);
$smarty->assign("contactInfoAll",$rowContactInfoAll[info_value]);

//����
//$smarty->assign("title","��ϵ����");
$smarty->assign("title","��ϵ����-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","��ϵ���� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ��ϵ����";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");

$content = $smarty->fetch('aboutus/contact.html');
$db->makeSearchData("../aboutus/contact.php",$content);

//$filename = "contact.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";

?>
