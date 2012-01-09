<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//公司简介中文
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Company' ");
	echo "<script>alert('公司简介信息修改成功?');location.href='../aboutme.php';</script>";

//首页简介**********************************************************************************************************************************
}else if(isset($_POST[task]) && "updateAboutUsIndexZh_cn"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images';
	//定义允许上传的文件扩展名
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
	echo "<script>alert('首页简介信息修改成功?');location.href='../aboutme_index.php';</script>";


//公司文化中文**********************************************************************************************************************************
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Feature' ");
	echo "<script>alert('华锋优势信息修改成功?');location.href='../culture.php';</script>";


//联系我们
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='ContactUs' ");
	echo "<script>alert('联系我们信息修改成功?');location.href='../contactus.php';</script>";



//消费指南
}else if(isset($_POST[task]) && "updateGuideZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Guide' ");
	echo "<script>alert('消费指南信息修改成功?');location.href='../guide.php';</script>";



//消费指南
}else if(isset($_POST[task]) && "updateGuideIndex"==$_POST[task]){
	$db->query("update comm_code set type_value='".htmlentities($_POST[content])."' where type_name='Guide_Left' ");
	echo "<script>alert('首页消费指南信息修改成功?');location.href='../guide_index.php';</script>";



}else if(isset($_POST[task]) && "updateldzcEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='Word' ");
	echo "<script>alert('领导致辞[英文]信息修改成功?');location.href='../ldzc.php';</script>";

//发展历程
}else if(isset($_POST[task]) && "updatefzlcZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='History' ");
	echo "<script>alert('加盟代理[中文]信息修改成功?');location.href='../fzlc.php';</script>";

}else if(isset($_POST[task]) && "updatefzlcEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='History' ");
	echo "<script>alert('发展历程[英文]信息修改成功?');location.href='../fzlc.php';</script>";

}


//版权信息
else if(isset($_POST[task]) && "updateCopyZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ButtomCopyInfo' ");
	echo "<script>alert('版权信息[中文]信息修改成功!');location.href='../copy.php';</script>";

}else if(isset($_POST[task]) && "updateCopyEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ButtomCopyInfo' ");
	echo "<script>alert('版权信息[英文]信息修改成功!');location.href='../copy.php';</script>";

}

//底部导航信息
else if(isset($_POST[task]) && "updateNavButtonZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ButtomNavInfo' ");
	echo "<script>alert('底部导航[中文]信息修改成功!');location.href='../nav_buttom.php';</script>";

}else if(isset($_POST[task]) && "updateNavButtonEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ButtomNavInfo' ");
	echo "<script>alert('底部导航[英文]信息修改成功!');location.href='../nav_buttom.php';</script>";

}




//首页广告
else if(isset($_POST[task]) && "updateFlash"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/';
	//定义允许上传的文件扩展名
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
	echo "<script>alert('首页flash图片修改成功!');location.href='../flash.php';</script>";
}
?>
