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
//$smarty->assign("title","加入我们");
$smarty->assign("title","合作登入-加入我们-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","合作登入 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 合作登入";
$smarty->assign("address",$address);

$smarty->display("sure/sure.html",$_GET[ac]);

$content = $smarty->fetch('sure/sure.html',$_GET[ac]);
$db->makeSearchData("../sure/",$content);
?>
