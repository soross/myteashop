<?php
if(!isset($_GET[enviid])||empty($_GET[enviid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/lang.class.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//��ϵ����ContactUs
	$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
	$smarty->assign("contactUsInfo",$contactusInfo[info]);

	$aboutUsInfoAll = getInfo("cp where remark='AboutUs'",$db,"cp_info_value_".$currlang." as info");
	$smarty->assign("AboutUsInfoAll",$aboutUsInfoAll[info]);


	$enviInfo = getInfo("cp where id='".$_GET[enviid]."'",$db,"id,cp_info_type_".$currlang." as envi_name,cp_info_value_".$currlang." as envi_desc,path");
	$smarty->assign("enviinfo",$enviInfo);


	$smarty->display("environmentinfo.html");
}
?>