<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��ҳ��˾����Ҫ��Ϣ�޸�
if(isset($_POST[task]) && "updateAboutInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='about.php' and comm_type='Menu' ");
	echo "<script>alert('���������Ϣ�޸ĳɹ�!');location.href='../aboutme.php';</script>";

//������˾�����ϸ������Ŀ
}else if(isset($_POST[task]) && "updateContactInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='contact.php' and comm_type='Menu' ");
	echo "<script>alert('��ϵ�����޸ĳɹ�!');location.href='../contactus.php';</script>";

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





//����֤��
}else if(isset($_POST[task]) && "addCert"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/cert/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'png','jpg');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('certPic')){
		$filename = "images/cert/".$up->getNewFileName();
		$db->query("insert into cert(cert_name,path) values('$_POST[name]','$filename') ");
		echo "<script>alert('֤�������ɹ�!');location.href='../cert.php';</script>";
	}else{
		echo "<script>alert('֤������ʧ�ܡ������ϴ����ļ��Ƿ����Ҫ��!');location.href='../cert.php';</script>";
	}
}
//�޸�֤��
else if(isset($_POST[task]) && "updateCert"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/cert/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'png','jpg');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('certPic')){
		$filename = "images/cert/".$up->getNewFileName();
		$db->query("update cert set path='$filename',cert_name='$_POST[name]' where id='$_POST[certid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('֤����Ϣ��ͼƬ�޸ĳɹ�!');location.href='../cert.php';</script>";
	}else{
		$db->query("update cert set cert_name='$_POST[name]' where  id='$_POST[certid]'");
		echo "<script>alert('֤����Ϣ�޸ĳɹ�!');location.href='../cert.php';</script>";
	}
}
//ɾ��֤��http://localhost/edu/aams/post/config.action.php?task=deleteCert&certid=11&path=images/cert/20120424033514216.jpg
else if(isset($_GET[task]) && "deleteCert"==$_GET[task]){
	if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	$db->query("delete from cert where id='$_GET[certid]' ");
	echo "<script>alert('֤��ɾ���ɹ�?');location.href='../cert.php';</script>";


}
//��ҳ��������Ҫ��Ϣ
else if(isset($_POST[task]) && "updatePartnerInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[content])."' where comm_code='Partner' ");
	echo "<script>alert('��ҳ��������Ҫ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";

}else if(isset($_POST[task]) && "updatePartnerDesc"==$_POST[task]){
	$db->query("update comm_code set comm_type='".replace($_POST[title])."',comm_value='".replace($_POST[content2])."' where id='$_POST[id]'");
	echo "<script>alert('���������ϸ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";


}





//����У��ͼƬ
else if(isset($_POST[task]) && "updateSchoolLogo"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/school/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/school/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[comm_value]',flag='$_POST[flag]' where comm_type='School_Logo' and id='$_POST[schoolid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('У�������Ϣ��ͼƬ�޸ĳɹ�!');location.href='../schoollogo.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[comm_value]',flag='$_POST[flag]' where comm_type='School_Logo' and id='$_POST[schoolid]'");
		echo "<script>alert('У�������Ϣ�޸ĳɹ�!');location.href='../schoollogo.php';</script>";
	}
}
//����У��ͼƬ
else if(isset($_POST[task]) && "addSchoolLogo"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/school/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/school/".$up->getNewFileName();
		$db->query("insert into  comm_code(comm_type,comm_value,comm_code,flag) values('School_Logo','$_POST[comm_value]','$filename','$_POST[flag]')");
  		echo "<script>if(confirm('У�����ͼƬ�����ɹ�,�Ƿ��������!')){location.href='../addschoollogo.php';}else{location.href='../schoollogo.php';}</script>";
	}else{
		print_r($up->getErrorMsg());
		echo "<script>alert('У�����ͼƬ����ʧ��,����ͼƬ�Ƿ����Ҫ��!');location.href='../addschoollogo.php';</script>";
	}
}
//ɾ��У��ͼƬpost/config.action.php?task=deleteSchoolLogo&schoolid=50&path=images/school/20120424052727424.jpg
else if(isset($_GET[task]) && "deleteSchoolLogo"==$_GET[task]){
	$db->query("delete from comm_code where comm_type='School_Logo' and id='$_GET[schoolid]' ");
	if(file_exists("../../".$_GET[path]))
		unlink("../../".$_GET[path]);
	echo "<script>alert('У�����ͼƬɾ���ɹ�!');location.href='../schoollogo.php';</script>";

}
//������������
else if(isset($_POST[task]) && "addLink"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/link/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/link/".$up->getNewFileName();
		$db->query("insert into link(link_name,url,path,remark) values('$_POST[link_name]','$_POST[url]','$filename','$_POST[remark]')");
  		echo "<script>alert('�����������ӳɹ�!');location.href='../link.php';</script>";
	}else{
		echo "<script>alert('������������ʧ��,�����ļ��Ƿ����Ҫ��!');location.href='../link.php';</script>";
	}
}
//�޸���������
else if(isset($_POST[task]) && "updateLink"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/link/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/link/".$up->getNewFileName();
		$db->query("update link set link_name='$_POST[link_name]',url='$_POST[url]',remark='$_POST[remark]',path='$filename' where id='$_POST[linkid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('����������Ϣ��ͼƬ�޸ĳɹ�!');location.href='../link.php';</script>";
	}else{
		$db->query("update link set link_name='$_POST[link_name]',url='$_POST[url]',remark='$_POST[remark]' where id='$_POST[linkid]'");
		echo "<script>alert('����������Ϣ�޸ĳɹ�!');location.href='../link.php';</script>";
	}
}
//ɾ����������
else if(isset($_GET[task])&&"deleteLink"==$_GET[task]){
	$db->query("delete from link where id='$_GET[linkid]'");
	if(file_exists("../../".$_GET[path]))
		unlink("../../".$_GET[path]);
	echo "<script>alert('��������ɾ���ɹ�!');location.href='../link.php';</script>";


//�޸�Logo ../images/tou.gif
}else if(isset($_POST[task]) && "modifyLogo"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*300)));
	if($up->uploadFile('filePath')){
		$filename = "images/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename' where comm_type='Logo' and id='$_POST[logoid]'");
  		echo "<script>alert('Logo�޸ĳɹ�!');location.href='../logo.php';</script>";
	}else{
		echo "<script>alert('Logo�޸�ʧ��!');location.href='../logo.php';</script>";
	}

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('��ϵ����[����]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";


//�޸�modifyBanner
}else if(isset($_POST[task]) && "modifyBanner"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/banner/';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*150)));
	if($up->uploadFile('filePath')){
		$filename = "images/banner/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',flag='$_POST[flag]',comm_value='$_POST[comm_value]' where comm_type='Index_AD' and id='$_POST[adid]'");

		if(file_exists("../../".$_POST[path]))
			unlink("../../".$_POST[path]);
  		echo "<script>alert('Banner��Ϣ��ͼƬ�޸ĳɹ�!');location.href='../indexad.php';</script>";
	}else{
		$db->query("update comm_code set flag='$_POST[flag]',comm_value='$_POST[comm_value]' where comm_type='Index_AD' and id='$_POST[adid]'");
		echo "<script>alert('Banner��Ϣ�޸ĳɹ�!');location.href='../indexad.php';</script>";
	}

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('��ϵ����[����]��Ϣ�޸ĳɹ�?');location.href='../contactus.php';</script>";

}
else{
	echo "<script>alert('����ʧ��!');window.history.back(-1);</script>";
}
?>