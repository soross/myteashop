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
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../news/newslist.html'>新闻动态<a> &gt; $row[title]";
$smarty->assign("address",$address);

$smarty->display("news/newsinfo.html",$_GET[id]);

$content = $smarty->fetch('news/newsinfo.html',$_GET[id]);
$db->makeSearchData("../news/newsinfo.php?id=".$_GET[id],$content);

//生产html
/**
$filename = $db->getFileName($_GET[id],"../newspage/","news");
$db->makeHtml("../newspage/".$filename,$content);//写入内容到news.html文件

$db->query("update news set news_info_url='../newspage/".$filename."' where id='".$_GET[id]."'");
**/
//echo "<script>location.href='../newspage/".$filename."'</script>";
?>
