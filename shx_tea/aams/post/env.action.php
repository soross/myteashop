<?php

require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");


if(isset($_POST[task]) && "updateEnv"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/environment';
	//定义允许上传的文件扩展名
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

	echo "<script>alert('制茶环境信息修改成功!');location.href='../envlist.php';</script>";
}
else if(isset($_POST[task]) && "addEnv"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/environment';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('pic')){
		$filename = "images/environment/".$up->getNewFileName();
		$db->query("insert into comm_code(type_name,type_code,type_value,remark,isshow)" .
				" values('Environment','$filename','$_POST[content]','$_POST[remark]','0')");
		echo "<script>alert('制茶环境信息添加成功!');location.href='../envlist.php';</script>";
	}else{
		echo "<script>alert('制茶环境信息添加失败,请重试!');location.href='../envlist.php';</script>";
	}
}
else if(isset($_GET[task]) && "deleteEnv"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[envid]'");
	unlink("../../".$_GET[path]);
	echo "<script>alert('制茶环境信息删除成功!');location.href='../envlist.php';</script>";
}

?>
