<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$query = $db->query("select id,link_name,link_url from link");
$rowLink = array();
while($rowLK = $db->fetch_array($query)){
	$rowLink[] = $rowLK;
}
$smarty->assign("rowLink",$rowLink);

//标题
$smarty->assign("title","友情链接|".$SeoTitle);
$smarty->assign("keywords","友情链接|".$SeoKeywords);
$smarty->assign("description","友情链接|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 友情链接";
$smarty->assign("address",$address);

$smarty->display("aboutus/link.html");
?>
