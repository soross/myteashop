<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$query = $db->query("select * from link");
$rowLink = array();
while($rowLK = $db->fetch_array($query)){
	$rowLink[] = $rowLK;
}
$smarty->assign("rowLink",$rowLink);

//标题
$smarty->assign("title","友情链接-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","友情链接 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 友情链接";
$smarty->assign("address",$address);

$smarty->display("aboutus/link.html");
$content = $smarty->fetch('aboutus/link.html');
$db->makeSearchData("../aboutus/link.php",$content);

//$filename = "link.html";
//$db->makeHtml($filename,$content);//写入内容到news.html文件
//echo "<script>location.href='".$filename."'</script>";
?>
