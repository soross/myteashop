<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "updateButtomCopyInfo"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content2])."' where type_name='ButtomCopyInfo'");
	echo "<script>alert('页脚版权信息修改成功?');location.href='../config.php';</script>";
}else if(isset($_POST[task]) && "updateButtomNav"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='ButtomNav'");
	echo "<script>alert('页脚导航修改成功?');location.href='../config.php';</script>";
}else if(isset($_POST[task]) && "updateAboutMeConfig"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutMe'");
	echo "<script>alert('联盟简介修改成功?');location.href='../aboutmeconfig.php';</script>";
}else if(isset($_POST[task]) && "updateUserAgreementConfig"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='UserAgreement'");
	echo "<script>alert('用户使用协议修改成功?');location.href='../useragreementconfig.php';</script>";
}else if(isset($_POST[task]) && "updateAboutSjAgent"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutSjAgent'");
	echo "<script>alert('商家加盟信息修改成功?');location.href='../agentconfig.php';</script>";
}else if(isset($_POST[task]) && "updateAboutAgentAgent"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content2])."' where type_name='AboutAgentAgent'");
	echo "<script>alert('代理加盟信息修改成功?');location.href='../agentconfig.php';</script>";
}else if(isset($_POST[task]) && "QQService"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/qq/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('qqimage')){
		$query = $db->query("select type_url from lm_comm_code where type_name='QQService' and id='$_POST[configid]'");
		$info= $db->fetch_array($query);
		$filename = "images/qq/".$up->getNewFileName();
		$db->query("update lm_comm_code set type_code='$_POST[type_code]',content='$_POST[content]',remark='$_POST[remark]',type_url='$filename' where type_name='QQService' and id='$_POST[configid]'");
		unlink("../../".$info[type_url]);
  		echo "<script>alert('QQ服务信息修改成功!');location.href='../qqconfig.php';</script>";
	}else{
		$db->query("update lm_comm_code set type_code='$_POST[type_code]',content='$_POST[content]',remark='$_POST[remark]' where type_name='QQService' and id='$_POST[configid]'");
		echo "<script>alert('QQ服务信息修改成功!');location.href='../qqconfig.php';</script>";
	}
}else if(isset($_POST[task]) && "updateSystemBankInfo"==$_POST[task]){
	$db->query("update lm_comm_code set type_code='$_POST[bankname]',type_url='$_POST[bankurl]' where type_name='BankInfo'");
	echo "<script>alert('银行信息修改成功?');location.href='../bankinfo.php';</script>";
}

else if(isset($_POST[task]) && "updateAboutAgentShuoMing"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutAgentShuoMing'");
	echo "<script>alert('代理加盟说明修改成功?');location.href='../agentsm.php';</script>";
}

else if(isset($_POST[task]) && "updateAboutAgentYouShi"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutAgentYouShi'");
	echo "<script>alert('代理加盟优势修改成功?');location.href='../agentys.php';</script>";
}
?>
