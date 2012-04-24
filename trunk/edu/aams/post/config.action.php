<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//首页公司简介简要信息修改
if(isset($_POST[task]) && "updateAboutInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='about.php' and comm_type='Menu' ");
	echo "<script>alert('机构简介信息修改成功!');location.href='../aboutme.php';</script>";

//新增公司简介详细内容栏目
}else if(isset($_POST[task]) && "updateContactInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='contact.php' and comm_type='Menu' ");
	echo "<script>alert('联系我们修改成功!');location.href='../contactus.php';</script>";

//公司简介栏目信息修改
}else if(isset($_POST[task]) && "updateAbout"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[aboutid]])."' where id='$_POST[aboutid]' ");
	echo "<script>alert('公司简介栏目信息修改成功!');location.href='../aboutme.php';</script>";

//删除公司简介栏目信息
}else if(isset($_GET[task]) && "deleteAbout"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[aboutid]' ");
	echo "<script>alert('公司简介栏目信息删除成功?');location.href='../aboutme.php';</script>";




//首页优势简要信息修改
}else if(isset($_POST[task]) && "updateSupIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='Superiority' ");
	echo "<script>alert('首页优势简要信息修改成功!');location.href='../sup.php';</script>";

//新增公司简介详细内容栏目
}else if(isset($_POST[task]) && "addSup"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('新增优势详细内容栏目成功!');location.href='../sup.php';</script>";

//公司简介栏目信息修改
}else if(isset($_POST[task]) && "updateSup"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[supid]])."' where id='$_POST[supid]' ");
	echo "<script>alert('优势栏目信息修改成功!');location.href='../sup.php';</script>";

//删除公司简介栏目信息
}else if(isset($_GET[task]) && "deleteSup"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[supid]' ");
	echo "<script>alert('优势栏目信息删除成功?');location.href='../sup.php';</script>";


//新增联系方式栏目
}else if(isset($_POST[task]) && "addContact"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('新增联系方式栏目成功!');location.href='../contactus.php';</script>";

//联系方式信息修改
}else if(isset($_POST[task]) && "updateContact"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[contactid]])."' where id='$_POST[contactid]' ");
	echo "<script>alert('联系方式栏目信息修改成功!');location.href='../contactus.php';</script>";

//删除联系方式信息
}else if(isset($_GET[task]) && "deleteContact"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[contactid]' ");
	echo "<script>alert('联系方式栏目信息删除成功?');location.href='../contactus.php';</script>";





//新增证书
}else if(isset($_POST[task]) && "addCert"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/cert/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'png','jpg');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('certPic')){
		$filename = "images/cert/".$up->getNewFileName();
		$db->query("insert into cert(cert_name,path) values('$_POST[name]','$filename') ");
		echo "<script>alert('证书新增成功!');location.href='../cert.php';</script>";
	}else{
		echo "<script>alert('证书新增失败。请检查上传的文件是否符合要求!');location.href='../cert.php';</script>";
	}
}
//修改证书
else if(isset($_POST[task]) && "updateCert"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/cert/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'png','jpg');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('certPic')){
		$filename = "images/cert/".$up->getNewFileName();
		$db->query("update cert set path='$filename',cert_name='$_POST[name]' where id='$_POST[certid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('证书信息、图片修改成功!');location.href='../cert.php';</script>";
	}else{
		$db->query("update cert set cert_name='$_POST[name]' where  id='$_POST[certid]'");
		echo "<script>alert('证书信息修改成功!');location.href='../cert.php';</script>";
	}
}
//删除证书http://localhost/edu/aams/post/config.action.php?task=deleteCert&certid=11&path=images/cert/20120424033514216.jpg
else if(isset($_GET[task]) && "deleteCert"==$_GET[task]){
	if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	$db->query("delete from cert where id='$_GET[certid]' ");
	echo "<script>alert('证书删除成功?');location.href='../cert.php';</script>";


}
//首页合作伙伴简要信息
else if(isset($_POST[task]) && "updatePartnerInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[content])."' where comm_code='Partner' ");
	echo "<script>alert('首页合作伙伴简要信息修改成功?');location.href='../partner.php';</script>";

}else if(isset($_POST[task]) && "updatePartnerDesc"==$_POST[task]){
	$db->query("update comm_code set comm_type='".replace($_POST[title])."',comm_value='".replace($_POST[content2])."' where id='$_POST[id]'");
	echo "<script>alert('合作伙伴详细信息修改成功?');location.href='../partner.php';</script>";


}





//更新校企图片
else if(isset($_POST[task]) && "updateSchoolLogo"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/school/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/school/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[comm_value]',flag='$_POST[flag]' where comm_type='School_Logo' and id='$_POST[schoolid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('校企合作信息、图片修改成功!');location.href='../schoollogo.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[comm_value]',flag='$_POST[flag]' where comm_type='School_Logo' and id='$_POST[schoolid]'");
		echo "<script>alert('校企合作信息修改成功!');location.href='../schoollogo.php';</script>";
	}
}
//添加校企图片
else if(isset($_POST[task]) && "addSchoolLogo"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/school/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/school/".$up->getNewFileName();
		$db->query("insert into  comm_code(comm_type,comm_value,comm_code,flag) values('School_Logo','$_POST[comm_value]','$filename','$_POST[flag]')");
  		echo "<script>if(confirm('校企合作图片新增成功,是否继续添加!')){location.href='../addschoollogo.php';}else{location.href='../schoollogo.php';}</script>";
	}else{
		print_r($up->getErrorMsg());
		echo "<script>alert('校企合作图片新增失败,请检查图片是否符合要求!');location.href='../addschoollogo.php';</script>";
	}
}
//删除校企图片post/config.action.php?task=deleteSchoolLogo&schoolid=50&path=images/school/20120424052727424.jpg
else if(isset($_GET[task]) && "deleteSchoolLogo"==$_GET[task]){
	$db->query("delete from comm_code where comm_type='School_Logo' and id='$_GET[schoolid]' ");
	if(file_exists("../../".$_GET[path]))
		unlink("../../".$_GET[path]);
	echo "<script>alert('校企合作图片删除成功!');location.href='../schoollogo.php';</script>";

}
//添加友情链接
else if(isset($_POST[task]) && "addLink"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/link/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/link/".$up->getNewFileName();
		$db->query("insert into link(link_name,url,path,remark) values('$_POST[link_name]','$_POST[url]','$filename','$_POST[remark]')");
  		echo "<script>alert('友情连接添加成功!');location.href='../link.php';</script>";
	}else{
		echo "<script>alert('友情连接添加失败,请检查文件是否符合要求!');location.href='../link.php';</script>";
	}
}
//修改友情链接
else if(isset($_POST[task]) && "updateLink"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/link/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('filePath')){
		$filename = "images/link/".$up->getNewFileName();
		$db->query("update link set link_name='$_POST[link_name]',url='$_POST[url]',remark='$_POST[remark]',path='$filename' where id='$_POST[linkid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('友情链接信息、图片修改成功!');location.href='../link.php';</script>";
	}else{
		$db->query("update link set link_name='$_POST[link_name]',url='$_POST[url]',remark='$_POST[remark]' where id='$_POST[linkid]'");
		echo "<script>alert('友情链接信息修改成功!');location.href='../link.php';</script>";
	}
}
//删除友情连接
else if(isset($_GET[task])&&"deleteLink"==$_GET[task]){
	$db->query("delete from link where id='$_GET[linkid]'");
	if(file_exists("../../".$_GET[path]))
		unlink("../../".$_GET[path]);
	echo "<script>alert('友情链接删除成功!');location.href='../link.php';</script>";


//修改Logo ../images/tou.gif
}else if(isset($_POST[task]) && "modifyLogo"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*300)));
	if($up->uploadFile('filePath')){
		$filename = "images/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename' where comm_type='Logo' and id='$_POST[logoid]'");
  		echo "<script>alert('Logo修改成功!');location.href='../logo.php';</script>";
	}else{
		echo "<script>alert('Logo修改失败!');location.href='../logo.php';</script>";
	}

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('联系我们[中文]信息修改成功?');location.href='../contactus.php';</script>";


//修改modifyBanner
}else if(isset($_POST[task]) && "modifyBanner"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/banner/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*150)));
	if($up->uploadFile('filePath')){
		$filename = "images/banner/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',flag='$_POST[flag]',comm_value='$_POST[comm_value]' where comm_type='Index_AD' and id='$_POST[adid]'");

		if(file_exists("../../".$_POST[path]))
			unlink("../../".$_POST[path]);
  		echo "<script>alert('Banner信息、图片修改成功!');location.href='../indexad.php';</script>";
	}else{
		$db->query("update comm_code set flag='$_POST[flag]',comm_value='$_POST[comm_value]' where comm_type='Index_AD' and id='$_POST[adid]'");
		echo "<script>alert('Banner信息修改成功!');location.href='../indexad.php';</script>";
	}

	$db->query("update comm_code set type_content='".htmlentities($_POST[content])."' where lang='zh_cn' and type_name='ContactUs' ");
	echo "<script>alert('联系我们[中文]信息修改成功?');location.href='../contactus.php';</script>";

}
else{
	echo "<script>alert('操作失败!');window.history.back(-1);</script>";
}
?>
