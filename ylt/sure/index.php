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

//标题
$smarty->assign("title","合作登入|加入我们|".$SeoTitle);
$smarty->assign("keywords","合作登入|加入我们|".$SeoKeywords);
$smarty->assign("description","合作登入|加入我们|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 合作登入";
$smarty->assign("address",$address);

$smarty->display("sure/sure.html",$_GET[ac]);
?>
