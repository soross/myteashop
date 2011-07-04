<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//联系我们详细信息
$queryContactInfoAll = $db->query("select * from comm_info where info_type='ContactInfoAll'");
$rowContactInfoAll = $db->fetch_array($queryContactInfoAll);
$smarty->assign("contactInfoAll",$rowContactInfoAll[info_value]);

//标题
//$smarty->assign("title","联系我们");
$smarty->assign("title","联系我们-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","联系我们 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 联系我们";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");

$content = $smarty->fetch('aboutus/contact.html');
$db->makeSearchData("../aboutus/contact.php",$content);

//$filename = "contact.html";
//$db->makeHtml($filename,$content);//写入内容到news.html文件
//echo "<script>location.href='".$filename."'</script>";

?>
