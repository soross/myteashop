<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��ҳ��˾����Ҫ��Ϣ�޸�
if(isset($_POST[task]) && "updateAboutIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='About' ");
	echo "<script>alert('��ҳ��˾����Ҫ��Ϣ�޸ĳɹ�!');location.href='../aboutme.php';</script>";

//������˾�����ϸ������Ŀ
}else if(isset($_POST[task]) && "addAbout"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('������˾�����ϸ������Ŀ�ɹ�!');location.href='../aboutme.php';</script>";

//��˾�����Ŀ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateAbout"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[aboutid]])."' where id='$_POST[aboutid]' ");
	echo "<script>alert('��˾�����Ŀ��Ϣ�޸ĳɹ�!');location.href='../aboutme.php';</script>";

//ɾ����˾�����Ŀ��Ϣ
}else if(isset($_GET[task]) && "deleteAbout"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[aboutid]' ");
	echo "<script>alert('��˾�����Ŀ��Ϣɾ���ɹ�?');location.href='../aboutme.php';</script>";




//��ҳ���Ƽ�Ҫ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateSupIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='Superiority' ");
	echo "<script>alert('��ҳ���Ƽ�Ҫ��Ϣ�޸ĳɹ�!');location.href='../sup.php';</script>";

//������˾�����ϸ������Ŀ
}else if(isset($_POST[task]) && "addSup"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('����������ϸ������Ŀ�ɹ�!');location.href='../sup.php';</script>";

//��˾�����Ŀ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateSup"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[supid]])."' where id='$_POST[supid]' ");
	echo "<script>alert('������Ŀ��Ϣ�޸ĳɹ�!');location.href='../sup.php';</script>";

//ɾ����˾�����Ŀ��Ϣ
}else if(isset($_GET[task]) && "deleteSup"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[supid]' ");
	echo "<script>alert('������Ŀ��Ϣɾ���ɹ�?');location.href='../sup.php';</script>";


//������ϵ��ʽ��Ŀ
}else if(isset($_POST[task]) && "addContact"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('������ϵ��ʽ��Ŀ�ɹ�!');location.href='../contactus.php';</script>";

//��ϵ��ʽ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateContact"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[contactid]])."' where id='$_POST[contactid]' ");
	echo "<script>alert('��ϵ��ʽ��Ŀ��Ϣ�޸ĳɹ�!');location.href='../contactus.php';</script>";

//ɾ����ϵ��ʽ��Ϣ
}else if(isset($_GET[task]) && "deleteContact"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[contactid]' ");
	echo "<script>alert('��ϵ��ʽ��Ŀ��Ϣɾ���ɹ�?');location.href='../contactus.php';</script>";





//�����������
}else if(isset($_POST[task]) && "AddPartner"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('picture')){
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("insert into comm_code(comm_type,comm_value,comm_code,remark) " .
			"values('PartnerLogo','$_POST[url]','$filename','$_POST[name]') ");
		echo "<script>alert('������������ɹ�!');location.href='../partnerlogo.php';</script>";
	}else{
		echo "<script>alert('�����������ʧ�ܡ������ϴ����ļ��Ƿ����Ҫ��!');location.href='../partnerlogo.php';</script>";
	}
}
//�޸ĺ������
else if(isset($_POST[task]) && "updatePartner"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('path')){
		$query = $db->query("select comm_code from comm_code where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		$info= $db->fetch_array($query);
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		if(file_exists("../../".$info[comm_code]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('��������޸ĳɹ�!');location.href='../partnerlogo.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		echo "<script>alert('��������޸ĳɹ�!');location.href='../partnerlogo.php';</script>";
	}
}
//ɾ���������
else if(isset($_GET[task]) && "deletePartner"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[logoid]' ");
	if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	echo "<script>alert('�������ɾ���ɹ�?');location.href='../partnerlogo.php';</script>";


}
//��ҳ��������Ҫ��Ϣ
else if(isset($_POST[task]) && "updatePartnerInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[content])."' where comm_code='Partner' ");
	echo "<script>alert('��ҳ��������Ҫ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";

}else if(isset($_POST[task]) && "updatePartnerDesc"==$_POST[task]){
	$db->query("update comm_code set comm_type='".replace($_POST[title])."',comm_value='".replace($_POST[content2])."' where id='$_POST[id]'");
	echo "<script>alert('���������ϸ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";

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
	$save_path = '../../images/ad/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('adimage')){
		$query = $db->query("select comm_code from comm_code where comm_type='Index_AD' and id='$_POST[adid]'");
		$info= $db->fetch_array($query);
		$filename = "images/ad/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[seq]' where comm_type='Index_AD' and id='$_POST[adid]'");
		if(file_exists("../../".$info[comm_code]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('��ҳ��桾��Ϣ���޸ĳɹ�!');location.href='../indexad.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[seq]' where comm_type='Index_AD' and id='$_POST[adid]'");
		echo "<script>alert('��ҳ��桾˳���޸ĳɹ�!');location.href='../indexad.php';</script>";
	}
}else{
	//echo "<script>alert('����ʧ��!');window.history.back(-1);</script>";
}
?>
