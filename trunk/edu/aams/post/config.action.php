<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//机构简介
if(isset($_POST[task]) && "updateAboutInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='about.php' and comm_type='Menu' ");
	echo "<script>alert('机构简介信息修改成功!');location.href='../aboutme.php';</script>";

//联系方式信息
}else if(isset($_POST[task]) && "updateContactInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='contact.php' and comm_type='Menu' ");
	echo "<script>alert('联系我们修改成功!');location.href='../contactus.php';</script>";

//更新Copy信息
}else if(isset($_POST[task]) && "updateCopyInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_type='Copy_Info' ");
	echo "<script>alert('Copy信息修改成功!');location.href='../copy.php';</script>";

//更新SEO信息
}else if(isset($_POST[task]) && "updateSEOInfo"==$_POST[task]){
	$db->query('start transaction');
	$db->query("update comm_code set comm_value='$_POST[title]' where comm_type = 'SEO_Title'");
	$db->query("update comm_code set comm_value='$_POST[keyword]' where comm_type = 'SEO_Keyword'");
	$db->query("update comm_code set comm_value='$_POST[desc]' where comm_type = 'SEO_DESC'");
	if (mysql_errno()) {
		$db->query('rollback');
		echo "<script>alert('SEO信息修改失败!');location.href='../seo.php'</script>";
	} else {
		$db->query('commit');
		echo "<script>alert('SEO信息修改成功!');location.href='../seo.php'</script>";
	}
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
			unlink("../../".$info[path]);
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
		$db->query("update comm_code set comm_code='$filename' where comm_type='Logo' and remark='Logo'");
		if(file_exists("../../".$_POST[path]))
			unlink("../../".$_POST[path]);
  		echo "<script>alert('Logo修改成功!');location.href='../logo.php';</script>";
	}else{
		echo "<script>alert('Logo修改失败!');location.href='../logo.php';</script>";
	}
//修改口号 ../images/tou.gif
}else if(isset($_POST[task]) && "modifyKH"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*300)));
	if($up->uploadFile('filePath')){
		$filename = "images/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename' where comm_type='Logo' and remark='KouHao'");
		if(file_exists("../../".$_POST[path]))
			unlink("../../".$_POST[path]);
  		echo "<script>alert('口号修改成功!');location.href='../logo.php';</script>";
	}else{
		echo "<script>alert('口号修改失败!');location.href='../logo.php';</script>";
	}
//修改联系方式 ../images/tou.gif
}else if(isset($_POST[task]) && "modifyLinkInfo"==$_POST[task]){
		$db->query("update comm_code set comm_code='$_POST[content]' where comm_type='Logo' and remark='LinkInfo'");
  		echo "<script>alert('Logo联系方式修改成功!');location.href='../logo.php';</script>";

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

//更新在线客服信息
}else if(isset($_POST[task]) && "updateImConfig"==$_POST[task]){
		$db->query("update comm_code set comm_code='$_POST[comm_code]',comm_value='$_POST[comm_value]' where comm_type='OnlineService' and id='$_POST[onlineid]'");
  		echo "<script>alert('在线客户信息更新成功!');location.href='../imconfig.php';</script>";

}
else{
	echo "<script>alert('操作失败!');window.history.back(-1);</script>";
}
?>
