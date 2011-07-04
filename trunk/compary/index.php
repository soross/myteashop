<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
//产品分类
$queryProdClass = $db->query("select * from prod_class");
//print_r($queryProdClass);
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//flash设备展示模块
$queryFlash = $db->query("select * from prod order by create_date desc limit 0,4");
$rowF = array();
while($rowFlash = $db->fetch_array($queryFlash)){
	$rowF[] = $rowFlash;
}
$smarty->assign("flash",$rowF);

//最下方滚动模块
$queryRoll = $db->query("select * from prod where state='1' order by create_date desc limit 0,8");
$rowR = array();
while($rowRoll = $db->fetch_array($queryRoll)){
	$rowR[] = $rowRoll;
}
$smarty->assign("roll",$rowR);

//公司简介内容 图片+文本
$queryInfo = $db->query("select * from comm_info where info_type='AboutUs'");
while($rowInfo = $db->fetch_array($queryInfo)){
	if("ImageIndex"==$rowInfo[info_code]){
		//echo $rowInfo[info_value];
		$smarty->assign("imagePath",$rowInfo[info_value]);
	}else if("Text"==$rowInfo[info_code]){
		//echo $rowInfo[info_value];
		$smarty->assign("textContent",$rowInfo[info_value]);
	}
}//


//新闻滚动
$newListQuery = $db->query("select id,title,news_info_url from news order by create_date desc limit 0,5");
$newsListStr = "&nbsp;&nbsp;&nbsp;&nbsp;";
while($rowNewsList = $db->fetch_array($newListQuery)){
	$newsListStr .=  "<A href='../news/".$rowNewsList[news_info_url]."' target='_blank' title='".$rowNewsList[title]."'>".$db->cn_substr($rowNewsList[title],0,29)."</A>&nbsp;&nbsp;&nbsp;&nbsp;";
}
$smarty->assign("newsListStr",$newsListStr);

//脚注信息
$queryButtomInfo = $db->query("select * from comm_info where info_type='ButtomInfo'");
$rowButtomInfo = $db->fetch_array($queryButtomInfo);
$smarty->assign("buttomInfo",$rowButtomInfo[info_value]);


$smarty->assign("title","果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//print_r($rowPC);
$smarty->display("index.html");

$content = $smarty->fetch('index.html');
$db->makeSearchData("../index.php",$content);

//$filename = "index.html";
//$db->makeHtml($filename,$content);//写入内容到news.html文件
//echo "<script>location.href='".$filename."'</script>";
?>