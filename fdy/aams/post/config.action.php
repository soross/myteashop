<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//公司简介中文
if(isset($_POST[task]) && "updateAboutUsZh_cn"==$_POST[task]){

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='AboutUs' ");
	echo "<script>alert('公司简介[中文]信息修改成功?');location.href='../aboutme.php';</script>";

//公司简介英文
}else if(isset($_POST[task]) && "updateAboutUsEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='AboutUs' ");
	echo "<script>alert('公司简介[英文]信息修改成功?');location.href='../aboutme.php';</script>";

//公司文化中文
}else if(isset($_POST[task]) && "updateCultureZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Culture' ");
	echo "<script>alert('公司文化[中文]信息修改成功?');location.href='../culture.php';</script>";

//公司文化英文
}else if(isset($_POST[task]) && "updateCultureEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Culture' ");
	echo "<script>alert('公司文化[英文]信息修改成功?');location.href='../culture.php';</script>";

//品牌诠释
}else if(isset($_POST[task]) && "updateBrandZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Brand' ");
	echo "<script>alert('品牌诠释[中文]信息修改成功?');location.href='../brand.php';</script>";

}else if(isset($_POST[task]) && "updateBrandEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Brand' ");
	echo "<script>alert('品牌诠释[英文]信息修改成功?');location.href='../brand.php';</script>";

//加盟代理
}else if(isset($_POST[task]) && "updateAgentZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='Agent' ");
	echo "<script>alert('加盟代理[中文]信息修改成功?');location.href='../agent.php';</script>";

}else if(isset($_POST[task]) && "updateAgentEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='Agent' ");
	echo "<script>alert('加盟代理[英文]信息修改成功?');location.href='../agent.php';</script>";

//联系我们
}else if(isset($_POST[task]) && "updateContactUsZh_cn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('联系我们[中文]信息修改成功?');location.href='../contactus.php';</script>";

}else if(isset($_POST[task]) && "updateContactUsEn"==$_POST[task]){
	$db->query("update comm_code set type_content='".htmlentities($_POST[content2])."' where lang='en' and type_name='ContactUs' ");
	echo "<script>alert('联系我们[英文]信息修改成功?');location.href='../contactus.php';</script>";

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
