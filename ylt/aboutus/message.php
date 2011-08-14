<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//标题
$smarty->assign("title","客户留言|".$SeoTitle);
$smarty->assign("keywords","客户留言|".$SeoKeywords);
$smarty->assign("description","客户留言|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 客户留言";
$smarty->assign("address",$address);

$smarty->display("aboutus/message.html");
?>
