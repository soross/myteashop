<?php
if(!isset($_GET[jobid])||empty($_GET[jobid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/lang.class.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//����Ŀ¼
	//��ϵ����ContactUs
	$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
	$smarty->assign("contactUsInfo",html_entity_decode($contactusInfo[info]));


	$jobInfo = getInfo("job where id='".$_GET[jobid]."'",$db);
	$smarty->assign("jobinfo",$jobInfo);

	$smarty->assign("lang_job",$lang[$currlang]['job']);

	$smarty->display("jobinfo.html");
}
?>
