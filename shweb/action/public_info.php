<?php
//标题
$smarty->assign("title","上海星霸艺术涂装有限公司   马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");
$smarty->assign("keywords","上海星霸艺术涂装有限公司 ,上海星霸,星霸艺术涂装,马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");
$smarty->assign("description","上海星霸艺术涂装有限公司 ,上海星霸,星霸艺术涂装,马莱漆,马来漆,金银箔,金箔,银箔,板岩漆,浮雕漆,肌理漆,真石漆,墙衣,仿砂岩漆,仿大理石漆,仿风化石漆,幻影漆,彩砂,艺术涂装,工程施工");

//产品类型
$queryProdClassList = $db->query("select id,class_name from prod_class");
$rowProdClassList = array();
while($rowProdClass = $db->fetch_array($queryProdClassList)){
	$rowProdClassList[] = $rowProdClass;
}
$smarty->assign("prodClassList",$rowProdClassList);

//底部信息
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("buttomInfo",$rowButtom);

//客户信息
$query = $db->query("select id,remark from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);
?>
