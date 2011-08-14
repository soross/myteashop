<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//产品分类
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//联系我们详细信息
$queryContactInfoAll = $db->query("select info_value from comm_info where info_type='ContactInfoAll'");
$rowContactInfoAll = $db->fetch_array($queryContactInfoAll);
$smarty->assign("contactInfoAll",$rowContactInfoAll[info_value]);

//标题
$smarty->assign("title","联系我们|".$SeoTitle);
$smarty->assign("keywords","联系我们|".$SeoKeywords);
$smarty->assign("description","联系我们|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; 联系我们";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");

?>
