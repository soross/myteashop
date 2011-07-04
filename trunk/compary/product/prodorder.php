<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");


//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);


//标题
$smarty->assign("title","方案订购-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","方案订购 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='prodlist.php'>解决方案</a>  &gt; 方案订购";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

$content = $smarty->fetch('prod/prodorder.html');
$db->makeSearchData("../product/prodorder.php",$content);
?>
