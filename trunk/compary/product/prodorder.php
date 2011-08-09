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
$smarty->assign("title",$row[prod_name]."|方案订购|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|方案订购|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|方案订购|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../product/prodlist.php'>解决方案</a>  &gt; 方案订购";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

$content = $smarty->fetch('prod/prodorder.html');
$db->makeSearchData("../product/prodorder.php",$content);
?>
