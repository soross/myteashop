<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��˾�������
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){

	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='AboutUs' ");
	echo "<script>alert('��˾���[����]��Ϣ�޸ĳɹ�?');location.href='../aboutme.php';</script>";

//��˾���Ӣ��
}else if(isset($_POST[task]) && "updateAboutUsEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='AboutUs' ");
	echo "<script>alert('��˾���[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../aboutme.php';</script>";

//��ҳ�������
}else if(isset($_POST[task]) && "updateAboutUsIndexZh_cn"==$_POST[task]){

	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='AboutUsInfo' ");
	echo "<script>alert('��ҳ���[����]��Ϣ�޸ĳɹ�?');location.href='../aboutme_index.php';</script>";

//��ҳ���Ӣ��
}else if(isset($_POST[task]) && "updateAboutUsIndexEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where  type_name='AboutUsInfo' ");
	echo "<script>alert('��ҳ���[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../aboutme_index.php';</script>";

//��˾�Ļ�����
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='Culture' ");
	echo "<script>alert('��˾�Ļ�[����]��Ϣ�޸ĳɹ�?');location.href='../culture.php';</script>";

//��˾�Ļ�Ӣ��
}else if(isset($_POST[task]) && "updateCultureEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='Culture' ");
	echo "<script>alert('��˾�Ļ�[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../culture.php';</script>";

//�쵼�´�
}else if(isset($_POST[task]) && "updateldzcZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='Word' ");
	echo "<script>alert('�쵼�´�[����]��Ϣ�޸ĳɹ�?');location.href='../ldzc.php';</script>";

}else if(isset($_POST[task]) && "updateldzcEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='Word' ");
	echo "<script>alert('�쵼�´�[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../ldzc.php';</script>";

//��չ����
}else if(isset($_POST[task]) && "updatefzlcZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='History' ");
	echo "<script>alert('���˴���[����]��Ϣ�޸ĳɹ�?');location.href='../fzlc.php';</script>";

}else if(isset($_POST[task]) && "updatefzlcEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='History' ");
	echo "<script>alert('��չ����[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../fzlc.php';</script>";

//��ϵ����
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='ContactUs' ");
	echo "<script>alert('��ϵ����[����]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";

}else if(isset($_POST[task]) && "updateContactUsEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='ContactUs' ");
	echo "<script>alert('��ϵ����[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";

}


//��ϸ��ϵ����
else if(isset($_POST[task]) && "updateAllContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ContactUsInfo' ");
	echo "<script>alert('��ϸ��ϵ����[����]��Ϣ�޸ĳɹ�?');location.href='../contactusall.php';</script>";

}else if(isset($_POST[task]) && "updateAllContactUsEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ContactUsInfo' ");
	echo "<script>alert('��ϸ��ϵ����[Ӣ��]��Ϣ�޸ĳɹ�?');location.href='../contactusall.php';</script>";

}


//��Ȩ��Ϣ
else if(isset($_POST[task]) && "updateCopyZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ButtomCopyInfo' ");
	echo "<script>alert('��Ȩ��Ϣ[����]��Ϣ�޸ĳɹ�!');location.href='../copy.php';</script>";

}else if(isset($_POST[task]) && "updateCopyEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ButtomCopyInfo' ");
	echo "<script>alert('��Ȩ��Ϣ[Ӣ��]��Ϣ�޸ĳɹ�!');location.href='../copy.php';</script>";

}

//�ײ�������Ϣ
else if(isset($_POST[task]) && "updateNavButtonZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ButtomNavInfo' ");
	echo "<script>alert('�ײ�����[����]��Ϣ�޸ĳɹ�!');location.href='../nav_buttom.php';</script>";

}else if(isset($_POST[task]) && "updateNavButtonEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ButtomNavInfo' ");
	echo "<script>alert('�ײ�����[Ӣ��]��Ϣ�޸ĳɹ�!');location.href='../nav_buttom.php';</script>";

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
