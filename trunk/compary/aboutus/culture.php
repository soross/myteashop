<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//����
//$smarty->assign("title","��˾�Ļ�");
$smarty->assign("title","��˾�Ļ�-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","��˾�Ļ� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ��˾�Ļ�";
$smarty->assign("address",$address);

$smarty->display("aboutus/culture.html");

//$content = $smarty->fetch('aboutus/culture.html');
//$db->makeSearchData("../aboutus/culture.php",$content);
?>
