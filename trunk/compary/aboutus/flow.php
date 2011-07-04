<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//标题
//$smarty->assign("title","合作流程");
$smarty->assign("title","合作流程-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","合作流程 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 合作流程";
$smarty->assign("address",$address);

$smarty->display("aboutus/flow.html");

$content = $smarty->fetch('aboutus/flow.html');
$db->makeSearchData("../aboutus/flow.php",$content);

//$filename = "flow.html";
//$db->makeHtml($filename,$content);//写入内容到news.html文件
//echo "<script>location.href='".$filename."'</script>";
?>
