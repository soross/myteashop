<?php

require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");


if(isset($_POST[task]) && "updateEnv"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/environment';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('envpic')){
		$filename = $up->getNewFileName();
		unlink("../../images/environment/".$_POST[env_pic]);
	}else{
		$filename = $_POST[env_pic];
	}
	$db->query("update cp set path='$filename' where id='".$_POST[envid]."'");

	echo "<script>alert('�豸������Ϣ�޸ĳɹ�!');location.href='../envlist.php';</script>";
}
else if(isset($_POST[task]) && "addEnv"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/environment';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('envpic')){
		$filename = $up->getNewFileName();
		$db->query("insert into cp(remark,path,create_date) values('DeviceContext','$filename',now())");
		echo "<script>alert('�豸������Ϣ��ӳɹ�!');location.href='../envlist.php';</script>";
	}else{
		echo "<script>alert('�豸������Ϣ���ʧ��,������!');location.href='../envlist.php';</script>";
	}
}
else if(isset($_GET[task]) && "deleteEnv"==$_GET[task]){
	$db->query("delete from cp where id='$_GET[envid]'");
	unlink("../../images/environment/".$_GET[path]);
	echo "<script>alert('�豸������Ϣɾ���ɹ�!');location.href='../envlist.php';</script>";
}

?>
