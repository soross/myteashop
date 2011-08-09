<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}

//具体内容
$query = $db->query("select id,prod_name,prod_picture,case_info_url from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}
$smarty->assign("prodinfo",$row);


//产品分类
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//标题
$smarty->assign("title",$row[prod_name]."|成功案例|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|成功案例|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|成功案例|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../case/caselist.html'>成功案例</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);


$smarty->display("case/caseinfo.html",$_GET[id]);

$content = $smarty->fetch('case/caseinfo.html',$_GET[id]);
$db->makeSearchData("../case/caseinfo.php?id=".$_GET[id],$content);

//生产html
//$filename = $db->getFileName($_GET[id],"../casepage/","case");
//$db->makeHtml("../casepage/".$filename,$content);//写入内容到news.html文件

//$db->query("update prod set case_info_url='../casepage/".$filename."' where id='".$_GET[id]."'");
//echo "<script>location.href='../casepage/".$filename."'</script>";
?>
