<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "LoginADCode"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/ad/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('adimage')){
		$query = $db->query("select type_url,type_code from lm_comm_code where type_name='LoginAdCode' and id='$_POST[adid]'");
		$info= $db->fetch_array($query);
		$filename = "images/ad/".$up->getNewFileName();
		$db->query("update lm_comm_code set type_code='$filename',type_url='$_POST[type_url]' where type_name='LoginAdCode' and id='$_POST[adid]'");
		unlink("../../".$info[type_code]);
  		echo "<script>alert('修改成功!');location.href='../loginad.php';</script>";
	}else{
		printf($up->getErrorMsg());
		$db->query("update lm_comm_code set type_url='$_POST[type_url]' where type_name='LoginAdCode' and id='$_POST[adid]'");
		echo "<script>alert('图片修改失败或者图片没有修改,广告其他信息修改成功!');location.href='../loginad.php';</script>";
	}
}else if(isset($_POST[task]) && "ADCode"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/ad/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*500)));
	if($up->uploadFile('adimage')){
		$query = $db->query("select type_url,type_code from lm_comm_code where type_name='AdCode' and id='$_POST[adid]'");
		$info= $db->fetch_array($query);
		$filename = "images/ad/".$up->getNewFileName();
		$db->query("update lm_comm_code set remark='$_POST[remark]',type_code='$filename',type_url='$_POST[type_url]' where type_name='AdCode' and id='$_POST[adid]'");
		unlink("../../".$info[type_code]);
  		echo "<script>alert('修改成功!');location.href='../ad.php';</script>";
	}else{
		$db->query("update lm_comm_code set remark='$_POST[remark]',type_url='$_POST[type_url]' where type_name='AdCode' and id='$_POST[adid]'");
		echo "<script>alert('图片修改失败或者图片没有修改,广告其他信息修改成功!');location.href='../ad.php';</script>";
	}
}

?>
