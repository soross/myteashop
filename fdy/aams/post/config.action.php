<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��˾�������
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='AboutUs' ");
	echo "<script>alert('��˾���[����]��Ϣ�޸ĳɹ�?');location.href='../aboutme.php';</script>";

//��˾���Ӣ��
}else if(isset($_POST[task]) && "updateAboutUsEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='AboutUs' ");
	echo "<script>alert('��˾���[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../aboutme.php';</script>";

//��˾�Ļ�����
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Culture' ");
	echo "<script>alert('��˾�Ļ�[����]��Ϣ�޸ĳɹ�?');location.href='../culture.php';</script>";

//��˾�Ļ�Ӣ��
}else if(isset($_POST[task]) && "updateCultureEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Culture' ");
	echo "<script>alert('��˾�Ļ�[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../culture.php';</script>";

//Ʒ��ڹ��
}else if(isset($_POST[task]) && "updateBrandZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Brand' ");
	echo "<script>alert('Ʒ��ڹ��[����]��Ϣ�޸ĳɹ�?');location.href='../brand.php';</script>";

}else if(isset($_POST[task]) && "updateBrandEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Brand' ");
	echo "<script>alert('Ʒ��ڹ��[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../brand.php';</script>";

//���˴���
}else if(isset($_POST[task]) && "updateAgentZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Agent' ");
	echo "<script>alert('���˴���[����]��Ϣ�޸ĳɹ�?');location.href='../agent.php';</script>";

}else if(isset($_POST[task]) && "updateAgentEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Agent' ");
	echo "<script>alert('���˴���[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../agent.php';</script>";

//��ϵ����
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('��ϵ����[����]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";

}else if(isset($_POST[task]) && "updateContactUsEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='ContactUs' ");
	echo "<script>alert('��ϵ����[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";

}
//��ҳ���
else if(isset($_POST[task]) && "Index_AD"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('adimage')){
		$query = $db->query("select type_code from comm_code where type_name='Index_AD' and id='$_POST[adid]'");
		$info= $db->fetch_array($query);
		$filename = "images/".$up->getNewFileName();
		$db->query("update comm_code set type_code='$filename',type_content='$_POST[type_content]',remark='$_POST[remark]' where type_name='Index_AD' and id='$_POST[adid]'");
		unlink("../../".$info[type_code]);
  		echo "<script>alert('��ҳ�����Ϣ�޸ĳɹ�!');location.href='../indexad.php';</script>";
	}else{
		$db->query("update comm_code set type_content='$_POST[type_content]',remark='$_POST[remark]' where type_name='Index_AD' and id='$_POST[adid]'");
		echo "<script>alert('��ҳ�����Ϣ�޸ĳɹ�!');location.href='../indexad.php';</script>";
	}
}
?>
