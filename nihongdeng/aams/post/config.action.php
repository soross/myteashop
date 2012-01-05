<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//公司简介中文
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){

	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='AboutUs' ");
	echo "<script>alert('公司简介[中文]信息修改成功?');location.href='../aboutme.php';</script>";

//公司简介英文
}else if(isset($_POST[task]) && "updateAboutUsEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='AboutUs' ");
	echo "<script>alert('公司简介[英文]信息修改成功?');location.href='../aboutme.php';</script>";

//首页简介中文
}else if(isset($_POST[task]) && "updateAboutUsIndexZh_cn"==$_POST[task]){

	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='AboutUsInfo' ");
	echo "<script>alert('首页简介[中文]信息修改成功?');location.href='../aboutme_index.php';</script>";

//首页简介英文
}else if(isset($_POST[task]) && "updateAboutUsIndexEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where  type_name='AboutUsInfo' ");
	echo "<script>alert('首页简介[英文]信息修改成功?');location.href='../aboutme_index.php';</script>";

//公司文化中文
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='Culture' ");
	echo "<script>alert('公司文化[中文]信息修改成功?');location.href='../culture.php';</script>";

//公司文化英文
}else if(isset($_POST[task]) && "updateCultureEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='Culture' ");
	echo "<script>alert('公司文化[英文]信息修改成功?');location.href='../culture.php';</script>";

//领导致辞
}else if(isset($_POST[task]) && "updateldzcZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='Word' ");
	echo "<script>alert('领导致辞[中文]信息修改成功?');location.href='../ldzc.php';</script>";

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

//联系我们
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update cp set cp_info_value_zh_cn='".htmlentities($_POST[content])."' where remark='ContactUs' ");
	echo "<script>alert('联系我们[中文]信息修改成功?');location.href='../contactus.php';</script>";

}else if(isset($_POST[task]) && "updateContactUsEn"==$_POST[task]){
	$db->query("update cp set cp_info_value_en='".htmlentities($_POST[content2])."' where remark='ContactUs' ");
	echo "<script>alert('联系我们[英文]信息修改成功?');location.href='../contactus.php';</script>";

}


//详细联系我们
else if(isset($_POST[task]) && "updateAllContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_value_zh_cn='".htmlentities($_POST[content])."' where type_name='ContactUsInfo' ");
	echo "<script>alert('详细联系我们[中文]信息修改成功?');location.href='../contactusall.php';</script>";

}else if(isset($_POST[task]) && "updateAllContactUsEn"==$_POST[task]){
	$db->query("update comm_code set type_value_en='".htmlentities($_POST[content2])."' where type_name='ContactUsInfo' ");
	echo "<script>alert('详细联系我们[英文]信息修改成功?');location.href='../contactusall.php';</script>";

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
else if(isset($_POST[task]) && "Index_AD"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('adimage')){
		$query = $db->query("select type_code from comm_code where type_name='Index_AD' and id='$_POST[adid]'");
		$info= $db->fetch_array($query);
		$filename = "images/".$up->getNewFileName();
		$db->query("update comm_code set type_code='$filename',type_content='$_POST[type_content]',remark='$_POST[remark]' where type_name='Index_AD' and id='$_POST[adid]'");
		unlink("../../".$info[type_code]);
  		echo "<script>alert('首页广告信息修改成功!');location.href='../indexad.php';</script>";
	}else{
		$db->query("update comm_code set type_content='$_POST[type_content]',remark='$_POST[remark]' where type_name='Index_AD' and id='$_POST[adid]'");
		echo "<script>alert('首页广告信息修改成功!');location.href='../indexad.php';</script>";
	}
}
?>
