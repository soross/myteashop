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
	if($up->uploadFile('pic')){
		$filename = "images/environment/".$up->getNewFileName();
		unlink("../../".$_POST[env_pic]);
	}else{
		$filename = $_POST[env_pic];
	}
	$db->query("update comm_code set type_code='$filename',type_value='$_POST[content]',remark='$_POST[remark]' where id='".$_POST[envid]."'");

	echo "<script>alert('�Ʋ軷����Ϣ�޸ĳɹ�!');location.href='../envlist.php';</script>";
}
else if(isset($_POST[task]) && "addEnv"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/environment';
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('pic')){
		$filename = "images/environment/".$up->getNewFileName();
		$db->query("insert into comm_code(type_name,type_code,type_value,remark,isshow)" .
				" values('Environment','$filename','$_POST[content]','$_POST[remark]','0')");
		echo "<script>alert('�Ʋ軷����Ϣ��ӳɹ�!');location.href='../envlist.php';</script>";
	}else{
		echo "<script>alert('�Ʋ軷����Ϣ���ʧ��,������!');location.href='../envlist.php';</script>";
	}
}
else if(isset($_GET[task]) && "deleteEnv"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[envid]'");
	unlink("../../".$_GET[path]);
	echo "<script>alert('�Ʋ軷����Ϣɾ���ɹ�!');location.href='../envlist.php';</script>";
}

?>
