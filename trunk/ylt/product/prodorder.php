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
$smarty->assign("title",$row[prod_name]."|产品订购|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|产品订购|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|产品订购|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='prodlist.php'>产品中心</a>  &gt; 产品订购";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

?>
