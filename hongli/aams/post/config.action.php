<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "updateButtomCopyInfo"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content2])."' where type_name='ButtomCopyInfo'");
	echo "<script>alert('ҳ�Ű�Ȩ��Ϣ�޸ĳɹ�?');location.href='../config.php';</script>";
}else if(isset($_POST[task]) && "updateButtomNav"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='ButtomNav'");
	echo "<script>alert('ҳ�ŵ����޸ĳɹ�?');location.href='../config.php';</script>";
}else if(isset($_POST[task]) && "updateAboutMeConfig"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutMe'");
	echo "<script>alert('���˼���޸ĳɹ�?');location.href='../aboutmeconfig.php';</script>";
}else if(isset($_POST[task]) && "updateUserAgreementConfig"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='UserAgreement'");
	echo "<script>alert('�û�ʹ��Э���޸ĳɹ�?');location.href='../useragreementconfig.php';</script>";
}else if(isset($_POST[task]) && "updateAboutSjAgent"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutSjAgent'");
	echo "<script>alert('�̼Ҽ�����Ϣ�޸ĳɹ�?');location.href='../agentconfig.php';</script>";
}else if(isset($_POST[task]) && "updateAboutAgentAgent"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content2])."' where type_name='AboutAgentAgent'");
	echo "<script>alert('���������Ϣ�޸ĳɹ�?');location.href='../agentconfig.php';</script>";
}else if(isset($_POST[task]) && "QQService"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/qq/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('qqimage')){
		$query = $db->query("select type_url from lm_comm_code where type_name='QQService' and id='$_POST[configid]'");
		$info= $db->fetch_array($query);
		$filename = "images/qq/".$up->getNewFileName();
		$db->query("update lm_comm_code set type_code='$_POST[type_code]',content='$_POST[content]',remark='$_POST[remark]',type_url='$filename' where type_name='QQService' and id='$_POST[configid]'");
		unlink("../../".$info[type_url]);
  		echo "<script>alert('QQ������Ϣ�޸ĳɹ�!');location.href='../qqconfig.php';</script>";
	}else{
		$db->query("update lm_comm_code set type_code='$_POST[type_code]',content='$_POST[content]',remark='$_POST[remark]' where type_name='QQService' and id='$_POST[configid]'");
		echo "<script>alert('QQ������Ϣ�޸ĳɹ�!');location.href='../qqconfig.php';</script>";
	}
}else if(isset($_POST[task]) && "updateSystemBankInfo"==$_POST[task]){
	$db->query("update lm_comm_code set type_code='$_POST[bankname]',type_url='$_POST[bankurl]' where type_name='BankInfo'");
	echo "<script>alert('������Ϣ�޸ĳɹ�?');location.href='../bankinfo.php';</script>";
}

else if(isset($_POST[task]) && "updateAboutAgentShuoMing"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutAgentShuoMing'");
	echo "<script>alert('�������˵���޸ĳɹ�?');location.href='../agentsm.php';</script>";
}

else if(isset($_POST[task]) && "updateAboutAgentYouShi"==$_POST[task]){
	$db->query("update lm_comm_code set content='".htmlentities($_POST[content])."' where type_name='AboutAgentYouShi'");
	echo "<script>alert('������������޸ĳɹ�?');location.href='../agentys.php';</script>";
}
?>
