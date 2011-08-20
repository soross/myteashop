<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

//新闻列表
$queryNewsList = $db->query("select id,title from news order by create_date desc limit 0,5");
$rowNewsList = array();
while($rowNews = $db->fetch_array($queryNewsList)){
	$rowNewsList[] = $rowNews;
}
$smarty->assign("newsList",$rowNewsList);

//产品滚动
$queryProdList = $db->query("select * from prod where state='1' order by create_date desc limit 0,10");
$rowProdList = array();
while($rowProd = $db->fetch_array($queryProdList)){
	$rowProdList[] = $rowProd;
}
$smarty->assign("prodList",$rowProdList);

//底部信息
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("buttomInfo",$rowButtom);

//首页banner
$banner = "<script>";
$queryBanner = $db->query("select url,text,link from banner");
$index = 1;
while($rowBanner = $db->fetch_array($queryBanner)){
	$banner = $banner."imgUrl".$index."='images/".$rowBanner[url]."';";
	$banner = $banner."imgtext".$index."='".$rowBanner[text]."';";
	$banner = $banner." imgLink".$index."=escape('".$rowBanner[link]."');";
	$index++;
}
$banner = $banner."</script>";
$smarty->assign("banner",$banner);

//公司简介
$query = $db->query("select remark from comm_info where info_type='CompanyIndex'");
$row = $db->fetch_array($query);
$smarty->assign("CompanyInfo",$row);

//客户信息
$query = $db->query("select id,remark from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);

//标题
$smarty->assign("title","上海星霸信息科技有限公司   马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");
$smarty->assign("keywords","上海星霸信息科技有限公司 ,上海星霸,星霸艺术涂装,马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");
$smarty->assign("description","上海星霸信息科技有限公司 ,上海星霸,星霸艺术涂装,马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");

$smarty->display("index.html");
?>