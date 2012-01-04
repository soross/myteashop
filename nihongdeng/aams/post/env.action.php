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
	if($up->uploadFile('envpic')){
		$filename = $up->getNewFileName();
		unlink("../../images/environment/".$_POST[env_pic]);
	}else{
		$filename = $_POST[env_pic];
	}
	$db->query("update cp set cp_info_type_zh_cn='$_POST[zh_cn]',cp_info_type_en='$_POST[en]',cp_info_value_zh_cn='$_POST[content]'," .
			"cp_info_value_en='$_POST[content2]', path='$filename' where id='".$_POST[envid]."'");

	echo "<script>alert('设备环境信息修改成功!');location.href='../envlist.php';</script>";
}
else if(isset($_POST[task]) && "addEnv"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/environment';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('env_pic')){
		$filename = $up->getNewFileName();
		$db->query("insert into cp(cp_info_type_zh_cn,cp_info_type_en,cp_info_value_zh_cn," .
				"cp_info_value_en,remark,path,create_date) values('$_POST[zh_cn]','$_POST[en]','$_POST[content]'," .
				"'$_POST[content2]','DeviceContext','$filename',now())");
		echo "<script>alert('设备环境信息添加成功!');location.href='../envlist.php';</script>";
	}else{
		echo "<script>alert('设备环境信息添加失败,请重试!');location.href='../envlist.php';</script>";
	}
}
else if(isset($_GET[task]) && "deleteEnv"==$_GET[task]){
	$db->query("delete from cp where id='$_GET[envid]'");
	unlink("../../images/environment/".$_GET[path]);
	echo "<script>alert('设备环境信息删除成功!');location.href='../envlist.php';</script>";
}

?>
