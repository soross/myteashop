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
$smarty->assign("title",$row[prod_name]."-解决方案-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords",$row[prod_name]." 解决方案 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");



//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../product/prodlist.php'>解决方案</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);

$smarty->display("prod/prodinfo.html",$_GET[id]);

$content = $smarty->fetch('prod/prodinfo.html',$_GET[id]);
$db->makeSearchData("../product/prodinfo.php?id=".$_GET[id],$content);

//生产html
$filename = $db->getFileName($_GET[id],"../prodpage/","prod");
$db->makeHtml("../prodpage/".$filename,$content);//写入内容到news.html文件

$db->query("update prod set prod_info_url='../prodpage/".$filename."' where id='".$_GET[id]."'");
//echo "<script>location.href='../prodpage/".$filename."'</script>";
?>
