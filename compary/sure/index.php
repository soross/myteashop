<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

if(isset($_GET[ac]) && !empty($_GET[ac]) &&'loginAgain'== $_GET[ac]){
	$smarty->assign("loginAgain","OK");
}

if (isset ($_SESSION['WEB_USER_LOGIN_UID_SESSION']) && isset ($_SESSION['WEB_USER_LOGIN_SESSION']) && isset ($_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'])) {
	header('Location:member.php');
	exit;
}

//����
//$smarty->assign("title","��������");
$smarty->assign("title","��������-��������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","�������� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("sure/sure.html",$_GET[ac]);

$content = $smarty->fetch('sure/sure.html',$_GET[ac]);
$db->makeSearchData("../sure/",$content);
?>
