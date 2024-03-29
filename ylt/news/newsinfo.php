<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='newslist.php'</script>";
	exit();
}

//具体新闻内容
$query = $db->query("select * from news where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='newslist.php'</script>";
	exit();
}
$smarty->assign("newsinfo",$row);


//新闻类型
$newsClassQuery = $db->query("select * from news_class");
$newsClassRow = array();
while($rowCR = $db->fetch_array($newsClassQuery)){
	$newsClassRow[] = $rowCR;
}
$smarty->assign("newsClassRow",$newsClassRow);

//标题
$smarty->assign("title",$row[title]."|新闻动态|".$SeoTitle);
$smarty->assign("keywords",$row[title]."|新闻动态|".$SeoKeywords);
$smarty->assign("description",$row[title]."|新闻动态|".$SeoDesc);



//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../news/newslist.php'>新闻动态<a> &gt; $row[title]";
$smarty->assign("address",$address);

$smarty->display("news/newsinfo.html",$_GET[id]);
?>
