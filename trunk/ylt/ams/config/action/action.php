<?php
require_once("../../action/global_post.php");
if(isset($_POST['task']) && "addAdminUser"==$_POST['task']){
	if(!isset($_POST[adminname])||!isset($_POST[adminname])||empty($_POST[adminname])||empty($_POST[adminname])){
		echo "<script>alert('管理员帐号不能为空!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd])||!isset($_POST[adminpwd])||empty($_POST[adminpwd])||empty($_POST[adminpwd])){
		echo "<script>alert('管理员密码不能为空!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd_again])||!isset($_POST[adminpwd_again])||empty($_POST[adminpwd_again])||empty($_POST[adminpwd_again])){
		echo "<script>alert('重复密码不能为空!');location.href='../user.php';</script>";
	}else if($_POST[adminpwd]!==$_POST[adminpwd_again]){
		echo "<script>alert('密码不一致!');location.href='../user.php';</script>";
	}else{
		$db->query("insert into am(am_name,am_password,create_date) values('$_POST[adminname]','".md5($_POST[adminpwd])."',now())");
		echo "<script>alert('管理员账户添加成功!');location.href='../user.php';</script>";
	}
}else if(isset($_POST[task]) && "updateAdminUser"==$_POST[task]){
	if(!isset($_POST[adminname])||!isset($_POST[adminname])||empty($_POST[adminname])||empty($_POST[adminname])){
		echo "<script>alert('管理员帐号不能为空!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd])||!isset($_POST[adminpwd])||empty($_POST[adminpwd])||empty($_POST[adminpwd])){
		echo "<script>alert('管理员密码不能为空!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd_again])||!isset($_POST[adminpwd_again])||empty($_POST[adminpwd_again])||empty($_POST[adminpwd_again])){
		echo "<script>alert('重复密码不能为空!');location.href='../user.php';</script>";
	}else if($_POST[adminpwd]!==$_POST[adminpwd_again]){
		echo "<script>alert('密码不一致!');location.href='../user.php';</script>";
	}else{
		$db->query("update am set am_name='$_POST[adminname]',am_password='".md5($_POST[adminpwd])."' where id='$_POST[id]'");
		echo "<script>alert('管理员账户修改成功!');location.href='../user.php';</script>";
	}
}
//task=deleteAdminUser&id={$userList[list].id}
else if(isset($_GET[task]) && "deleteAdminUser"==$_GET[task]){
	$db->query("delete from am where id='$_GET[id]'");
	echo "<script>alert('管理员账户删除成功!');location.href='../user.php';</script>";
}

//task=deleteAdminUser&id={$userList[list].id}
else if(isset($_POST[task]) && "updateBanner"==$_POST[task]){
	//上传文件并获取文件名
	require_once("../../action/fileUpload.php");
	//$fname
	$sql = "update banner set text = $_POST[text],";
	if($fname!=="nopic.jpg" && !empty($fname)){
		$sql = $sql . "url='$fname',";
	}
	$sql = $sql . "state='$_POST[url]',link_id='$_POST[link_id]',";
	if($_POST[url]=='1'){
		$sql = $sql."link='product/prodinfo.php?id=$_POST[link_id]'";
	}else{
		$sql = $sql."link='case/caseinfo.php?id=$_POST[link_id]'";
	}

	$sql = $sql . " where id='$_POST[id]'";

	$db->query($sql);

	echo "<script>alert('更新首页动画成功!');location.href='../banner.php';</script>";
}

if(isset($_POST[task]) && "addLink"==$_POST[task] ){
	$db->query("insert into link(link_name,link_url,create_date) values('$_POST[link_name]','$_POST[link_url]',now())");
	echo "<script>alert('添加友链成功!');location.href='../link.php';</script>";
}

else if(isset($_POST[task]) && "updateLink"==$_POST[task] ){
	$db->query("update link set link_name='$_POST[link_name]',link_url='$_POST[link_url]' where id='$_POST[id]'");
	echo "<script>alert('修改友链成功!');location.href='../link.php';</script>";
}
else if(isset($_GET[task]) && "deleteLink"==$_GET[task] ){
	$db->query("delete from link where id='".$_GET[id]."'")	;
	echo "<script>alert('删除友链成功!');location.href='../link.php';</script>";
}
?>
