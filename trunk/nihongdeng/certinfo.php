<?php
if(!isset($_GET[certid])||empty($_GET[certid])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
	include_once("action/smarty_inc.php");
	include_once("action/lang.class.php");
	include_once("action/mysql.class.php");
	include_once("action/public_info.php");

	//联系我们ContactUs
	$contactusInfo = getInfo("cp where remark='ContactUs'",$db,"cp_info_value_".$currlang." as info");
	$smarty->assign("contactUsInfo",$contactusInfo[info]);

	$aboutUsInfoAll = getInfo("cp where remark='AboutUs'",$db,"cp_info_value_".$currlang." as info");
	$smarty->assign("AboutUsInfoAll",$aboutUsInfoAll[info]);


	$certInfo = getInfo("cp where id='".$_GET[certid]."'",$db,"id,cp_info_type_".$currlang." as cert_name,cp_info_value_".$currlang." as cert_desc,path");
	$smarty->assign("certinfo",$certInfo);


	$smarty->display("certinfo.html");
}
?>
