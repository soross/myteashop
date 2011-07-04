<?php
require_once("action/checkLogin.php");
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");

$smarty->clear_cache('sure/member.html'); //清除index.tpl的缓存

require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//客户案例列表
$caseQuery = $db->query("select * from cust_case where cust_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' order by state desc,create_date" );
//$caseRow = $db->fetch_array($caseQuery);
$caseRow = array();
while($rowR = $db->fetch_array($caseQuery)){
	$caseRow[] = $rowR;
}
$smarty->assign("caseList",$caseRow);



//标题
//$smarty->assign("title","加入我们");
$smarty->assign("title","方案确定-加入我们-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","方案确定 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 方案确定";
$smarty->assign("address",$address);

$smarty->display("sure/member.html");

$content = $smarty->fetch('sure/member.html');
$db->makeSearchData("../sure/member.php",$content);
?>
