<?php
require_once("action/checkLogin.php");
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");

$smarty->clear_cache('sure/member.html'); //���index.tpl�Ļ���

require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//�ͻ������б�
$caseQuery = $db->query("select * from cust_case where cust_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' order by state desc,create_date" );
//$caseRow = $db->fetch_array($caseQuery);
$caseRow = array();
while($rowR = $db->fetch_array($caseQuery)){
	$caseRow[] = $rowR;
}
$smarty->assign("caseList",$caseRow);



//����
//$smarty->assign("title","��������");
$smarty->assign("title","����ȷ��-��������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","����ȷ�� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ����ȷ��";
$smarty->assign("address",$address);

$smarty->display("sure/member.html");

$content = $smarty->fetch('sure/member.html');
$db->makeSearchData("../sure/member.php",$content);
?>
