<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//标题
$smarty->assign("title","公司文化|".$SeoTitle);
$smarty->assign("keywords","公司文化|".$SeoKeywords);
$smarty->assign("description","公司文化|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 公司文化";
$smarty->assign("address",$address);

$smarty->display("aboutus/culture.html");

//$content = $smarty->fetch('aboutus/culture.html');
//$db->makeSearchData("../aboutus/culture.php",$content);
?>
