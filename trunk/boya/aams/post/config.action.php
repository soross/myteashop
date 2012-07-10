<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
require_once("../action/public.fun.class.php");

//首页公司简介简要信息修改
if(isset($_POST[task]) && "updateAboutIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='About' ");
	echo "<script>alert('首页公司简介简要信息修改成功!');location.href='../aboutme.php';</script>";

//新增公司简介详细内容栏目
}else if(isset($_POST[task]) && "addAbout"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('新增公司简介详细内容栏目成功!');location.href='../aboutme.php';</script>";



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


//新增合作伙伴
}else if(isset($_POST[task]) && "AddPartner"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('picture')){
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("insert into comm_code(comm_type,comm_value,comm_code,remark) " .
			"values('PartnerLogo','$_POST[url]','$filename','$_POST[name]') ");
		echo "<script>alert('合作伙伴新增成功!');location.href='../partnerlogo.php';</script>";
	}else{
		echo "<script>alert('合作伙伴新增失败。请检查上传的文件是否符合要求!');location.href='../partnerlogo.php';</script>";
	}
}
//修改合作伙伴
else if(isset($_POST[task]) && "updatePartner"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('path')){
		$query = $db->query("select comm_code from comm_code where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		$info= $db->fetch_array($query);
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		if(file_exists("../../".$info[comm_code]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('合作伙伴修改成功!');location.href='../partnerlogo.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		echo "<script>alert('合作伙伴修改成功!');location.href='../partnerlogo.php';</script>";
	}
}
//删除合作伙伴
else if(isset($_GET[task]) && "deletePartner"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[logoid]' ");
	if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	echo "<script>alert('合作伙伴删除成功?');location.href='../partnerlogo.php';</script>";


}
//首页合作伙伴简要信息
else if(isset($_POST[task]) && "updatePartnerInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[content])."' where comm_code='Partner' ");
	echo "<script>alert('首页合作伙伴简要信息修改成功?');location.href='../partner.php';</script>";

}else if(isset($_POST[task]) && "updatePartnerDesc"==$_POST[task]){
	$db->query("update comm_code set comm_type='".replace($_POST[title])."',comm_value='".replace($_POST[content2])."' where id='$_POST[id]'");
	echo "<script>alert('合作伙伴详细信息修改成功?');location.href='../partner.php';</script>";




//联系我们
}else if(isset($_POST[task]) && "updateContact"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentCon])."' where id='".$_POST[conid]."' and comm_type='Contact' ");
	echo "<script>alert('联系我们更新成功?');location.href='../contactus.php';</script>";

//简要联系信息
}else if(isset($_POST[task]) && "updateContactUs"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentAdd])."' where id='".$_POST[conid]."' and comm_type='ContactUs' ");
	echo "<script>alert('简要联系方式更新成功?');location.href='../contactus.php';</script>";
}

//copy
else if(isset($_POST[task]) && "updateCopy"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentAdd])."' where id='".$_POST[butid]."' and comm_type='Buttom' ");
	echo "<script>alert('Copy信息更新成功?');location.href='../copy.php';</script>";




//公司简介栏目信息修改
}else if(isset($_POST[task]) && "updateAbout"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST['contentIndex'])."' where id='$_POST[aboutid]' ");
	echo "<script>alert('简介信息修改!');location.href='../aboutme.php';</script>";

}




else if(isset($_POST[task]) && "updateMap"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('comm_value')){
		$filename = "images/".$up->getNewFileName();
		$db->query("update boya_config set comm_code='$filename' where comm_type='Map' and id='$_POST[mapid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('地图修改成功!');location.href='../map.php';</script>";
	}else{
		echo "<script>alert('地图修改失败!');location.href='../map.php';</script>";
	}
}
//更新客服
else if(isset($_POST[task]) && "updateImConfig"==$_POST[task]){
	$db->query("update boya_config set comm_code='$_POST[comm_code]',comm_flag='$_POST[remark]' where id='$_POST[imId]'");
	echo "<script>alert('在线客服修改成功!');location.href='../service.php';</script>";

}
//更新菜单
else if(isset($_POST[task])&&"updateMenu"==$_POST[task]){
	$indexshow = "indexshow".$_POST[typeid];
	$db->query("update boya_type set type_name='$_POST[type_name]',seq='$_POST[seq]' where id='$_POST[typeid]'");//pid='$_POST[pid]',url='$_POST[url]',
	echo "<script>alert('导航更新成功!');location.href='../menu.php?';</script>";

}

//首页广告
else if(isset($_POST[task]) && "Index_AD"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/ad/';//201109281154581.jpg
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('path')){
		$filename = "images/ad/".$up->getNewFileName();
		$db->query("update boya_config set comm_code='$filename',comm_flag='$_POST[seq]' where comm_type='AD_Images' and id='$_POST[adid]'");
		if(file_exists("../../".$info[oldpath]))
		unlink("../../".$_POST[oldpath]);
  		echo "<script>alert('首页AD修改成功!');location.href='../ad.php';</script>";
	}else{
		$db->query("update boya_config set comm_value='$_POST[seq]' where comm_type='AD_Images' and id='$_POST[adid]'");
		echo "<script>alert('首页AD修改成功!');location.href='../ad.php';</script>";
	}
}
//更新SEO信息
else if(isset($_POST[task]) && "updateSEOInfo"==$_POST[task]){
	$db->query('start transaction');
	$db->query("update boya_config set comm_code='$_POST[title]' where comm_type = 'SEO_Title'");
	$db->query("update boya_config set comm_code='$_POST[keyword]' where comm_type = 'SEO_Keyword'");
	$db->query("update boya_config set comm_code='$_POST[desc]' where comm_type = 'SEO_Desc'");
	if (mysql_errno()) {
		$db->query('rollback');
		echo "<script>alert('SEO信息修改失败!');location.href='../seo.php'</script>";
	} else {
		$db->query('commit');
		echo "<script>alert('SEO信息修改成功!');location.href='../seo.php'</script>";
	}
}
//更新现场报名
else if(isset($_POST[task]) && "updateXcbm"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentCon])."' where comm_type = '$_POST[comm_type]'");
	echo "<script>alert('现场报名修改成功!');location.href='../addzxbm.php';</script>";
}
else{
	//echo "<script>alert('操作失败!');window.history.back(-1);</script>";
}
?>
