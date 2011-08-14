<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//标题
$smarty->assign("title","合作流程|".$SeoTitle);
$smarty->assign("keywords","合作流程|".$SeoKeywords);
$smarty->assign("description","合作流程|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 公司专利";
$smarty->assign("address",$address);

$smarty->display("aboutus/flow.html");
?>
