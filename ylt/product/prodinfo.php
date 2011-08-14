<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}

//具体新闻内容
$query = $db->query("select * from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}
$smarty->assign("prodinfo",$row);


//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//标题
$smarty->assign("title",$row[prod_name]."|产品中心|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|产品中心|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|产品中心|".$SeoDesc);




//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../product/prodlist.php'>产品中心</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);

$smarty->display("prod/prodinfo.html",$_GET[id]);
?>
