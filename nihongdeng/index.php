<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


//��Ʒ����
$typelist = getRows("product_type t where remark='1'",$db,"id,product_type_".$currlang." as product_type,pid");
$smarty->assign("typelist",$typelist);

//����
$newslist = getRows("news where lang='".$currlang."' order by create_date limit 0,8",$db);
$smarty->assign("newslist",$newslist);

//����
$caselist = getRows("obj_case where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("caselist",$caselist);


//��Ʒ
$prodlist = getRows("product where lang='".$currlang."' order by create_date limit 0,6",$db);
$smarty->assign("prodlist",$prodlist);

//���AboutUs
$aboutusInfo = getInfo("comm_code where type_name='AboutUsInfo'",$db,"type_value_".$currlang." as info");
$smarty->assign("aboutUsInfo",$aboutusInfo[info]);

//��ϵ����ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);



$smarty->display("index.html");
?>
