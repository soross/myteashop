<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


if($currlang=="en"){
	include_once("action/page.class.en.php");
}else{
	include_once("action/page.class.php");
}






$where = " where remark='Honour' and seq is null ";

//分页
$pagesize = 12;//一页显示多少条
$queryTotal = $db->query("select id from cp " .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//产品
$certRow = getRows("cp ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db,"id,cp_info_type_".$currlang." as cert_name,path");
$smarty->assign("certRows",$certRow);








//联系我们ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));

$aboutUsInfoAll = getInfo("cp where remark='AboutUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("AboutUsInfoAll",html_entity_decode($aboutUsInfoAll[info]));


$smarty->display("cert.html");
?>
