<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//搜索不缓存
$smarty->clear_cache('video/play.html'); //清除index.tpl的缓存
require_once("../action/public_info.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='../video/videolist.php'</script>";
	exit();
}

//具体新闻内容
$query = $db->query("select * from video where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='../video/videolist.php'</script>";
	exit();
}
$smarty->assign("videoinfo",$row);


//判断文件类型
$moiveType = "MediaPlayer";
if (eregi(".mid$",$movieurl) || eregi(".avi$",$movieurl) || eregi(".asf$",$movieurl) ||eregi(".asx$",$movieurl) || eregi(".wmv$",$movieurl) || eregi(".wma$",$movieurl)){
	//MediaPlayer播放
	$moiveType = "MediaPlayer";
}else if(eregi(".ra$",$movieurl)|| eregi(".mp3$",$movieurl) || eregi(".rm$",$movieurl) || eregi(".ram$",$movieurl) ){
	//RealPlayer播放的
	$moiveType= "RealPlayer";
}else if(eregi(".swf$",$movieurl)) {
	//flashplayer播放的
	$moiveType= "FlashPlayer";
}else{
	$moiveType = "MediaPlayer";
}
$smarty->assign("moiveType",$moiveType);

//产品分类
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//标题
$smarty->assign("title","视讯中心|".$SeoTitle);
$smarty->assign("keywords","视讯中心|".$SeoKeywords);
$smarty->assign("description","视讯中心|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../video/videolist.php'>视讯中心</a> &gt; ".$row[video_name];
$smarty->assign("address",$address);

$smarty->display("video/play.html");
?>
