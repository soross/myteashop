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


//��ϵ����ContactUs
$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
$smarty->assign("contactUsInfo",$contactusInfo[info]);


$pagesize =6;//һҳ��ʾ������
$queryTotal = $db->query("select id from job where state='0'" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//ְλ
$jobRow = getRows("job where state='0' order by create_date desc  limit $firstcount, $displaypg " ,$db);
$smarty->assign("jobRows",$jobRow);


$smarty->assign("lang_news",$lang[$currlang]['news']);

$smarty->display("job.html");
?>
