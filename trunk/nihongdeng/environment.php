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


$where = " where remark='DeviceContext' and seq is null ";

//��ҳ
$pagesize = 12;//һҳ��ʾ������
$queryTotal = $db->query("select id from cp " .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//��Ʒ
$enviRow = getRows("cp ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db,"id,cp_info_type_".$currlang." as envi_name,path");
$smarty->assign("enviRows",$enviRow);








//��ϵ����ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);

$aboutUsInfoAll = getInfo("cp where remark='AboutUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("AboutUsInfoAll",$aboutUsInfoAll[info]);


$smarty->display("environment.html");
?>
