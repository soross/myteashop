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
$smarty->assign("title","��������|��������|".$SeoTitle);
$smarty->assign("keywords","��������|��������|".$SeoKeywords);
$smarty->assign("description","��������|��������|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��������";
$smarty->assign("address",$address);

$smarty->display("sure/sure.html",$_GET[ac]);
?>
