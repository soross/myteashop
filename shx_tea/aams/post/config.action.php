<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��˾�������
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Company' ");
	echo "<script>alert('��˾�����Ϣ�޸ĳɹ�?');location.href='../aboutme.php';</script>";

//��ҳ���**********************************************************************************************************************************
}else if(isset($_POST[task]) && "updateAboutUsIndexZh_cn"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('aboutUsImg')){
		$filename = "images/".$up->getNewFileName();
		unlink("../../".$_POST[aboutUsImgOld]);
	}else{
		$filename = $_POST[aboutUsImgOld];
	}
	$db->query("update comm_code set type_code='$filename', type_value='".htmlentities($_POST[content])."' where type_name='AboutUs_Index' and isshow='0' ");
	echo "<script>alert('��ҳ�����Ϣ�޸ĳɹ�?');location.href='../aboutme_index.php';</script>";


//��˾�Ļ�����**********************************************************************************************************************************
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Feature' ");
	echo "<script>alert('����������Ϣ�޸ĳɹ�?');location.href='../culture.php';</script>";


//��ϵ����
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='ContactUs' ");
	echo "<script>alert('��ϵ������Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";



//����ָ��
}else if(isset($_POST[task]) && "updateGuideZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Guide' ");
	echo "<script>alert('����ָ����Ϣ�޸ĳɹ�?');location.href='../guide.php';</script>";



//����ָ��
}else if(isset($_POST[task]) && "updateGuideIndex"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Guide_Left' ");
	echo "<script>alert('��ҳ����ָ����Ϣ�޸ĳɹ�?');location.href='../guide_index.php';</script>";



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
else if(isset($_POST[task]) && "updateFlash"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('flash')){
		$filename = "images/".$up->getNewFileName();
		unlink("../../".$_POST[path]);
	}else{
		$filename=$_POST[path];
	}
	$db->query("update comm_code set type_code='$filename',remark='$_POST[remark]' where type_name='TopFlashImage' and id='$_POST[flashid]'");
	echo "<script>alert('��ҳflashͼƬ�޸ĳɹ�!');location.href='../flash.php';</script>";
}
?>
