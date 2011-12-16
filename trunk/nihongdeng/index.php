<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


//产品类型
$typelist = getRows("product_type t where remark='1'",$db,"id,product_type_".$currlang." as product_type,pid");
$smarty->assign("typelist",$typelist);

//新闻
$newslist = getRows("news where lang='".$currlang."' order by create_date limit 0,8",$db);
$smarty->assign("newslist",$newslist);

//案例
$caselist = getRows("obj_case where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("caselist",$caselist);


//产品
$prodlist = getRows("product where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("prodlist",$prodlist);

//简介AboutUs
$aboutusInfo = getInfo("comm_code where type_name='AboutUsInfo'",$db,"type_value_".$currlang." as info");
$smarty->assign("aboutUsInfo",$aboutusInfo[info]);

//联系我们ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);



$smarty->display("index.html");
?>
