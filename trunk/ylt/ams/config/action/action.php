<?php
require_once("../../action/global_post.php");
if(isset($_POST['task']) && "addAdminUser"==$_POST['task']){
	if(!isset($_POST[adminname])||!isset($_POST[adminname])||empty($_POST[adminname])||empty($_POST[adminname])){
		echo "<script>alert('����Ա�ʺŲ���Ϊ��!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd])||!isset($_POST[adminpwd])||empty($_POST[adminpwd])||empty($_POST[adminpwd])){
		echo "<script>alert('����Ա���벻��Ϊ��!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd_again])||!isset($_POST[adminpwd_again])||empty($_POST[adminpwd_again])||empty($_POST[adminpwd_again])){
		echo "<script>alert('�ظ����벻��Ϊ��!');location.href='../user.php';</script>";
	}else if($_POST[adminpwd]!==$_POST[adminpwd_again]){
		echo "<script>alert('���벻һ��!');location.href='../user.php';</script>";
	}else{
		$db->query("insert into am(am_name,am_password,create_date) values('$_POST[adminname]','".md5($_POST[adminpwd])."',now())");
		echo "<script>alert('����Ա�˻���ӳɹ�!');location.href='../user.php';</script>";
	}
}else if(isset($_POST[task]) && "updateAdminUser"==$_POST[task]){
	if(!isset($_POST[adminname])||!isset($_POST[adminname])||empty($_POST[adminname])||empty($_POST[adminname])){
		echo "<script>alert('����Ա�ʺŲ���Ϊ��!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd])||!isset($_POST[adminpwd])||empty($_POST[adminpwd])||empty($_POST[adminpwd])){
		echo "<script>alert('����Ա���벻��Ϊ��!');location.href='../user.php';</script>";
	}else if(!isset($_POST[adminpwd_again])||!isset($_POST[adminpwd_again])||empty($_POST[adminpwd_again])||empty($_POST[adminpwd_again])){
		echo "<script>alert('�ظ����벻��Ϊ��!');location.href='../user.php';</script>";
	}else if($_POST[adminpwd]!==$_POST[adminpwd_again]){
		echo "<script>alert('���벻һ��!');location.href='../user.php';</script>";
	}else{
		$db->query("update am set am_name='$_POST[adminname]',am_password='".md5($_POST[adminpwd])."' where id='$_POST[id]'");
		echo "<script>alert('����Ա�˻��޸ĳɹ�!');location.href='../user.php';</script>";
	}
}
//task=deleteAdminUser&id={$userList[list].id}
else if(isset($_GET[task]) && "deleteAdminUser"==$_GET[task]){
	$db->query("delete from am where id='$_GET[id]'");
	echo "<script>alert('����Ա�˻�ɾ���ɹ�!');location.href='../user.php';</script>";
}

//task=deleteAdminUser&id={$userList[list].id}
else if(isset($_POST[task]) && "updateBanner"==$_POST[task]){
	//�ϴ��ļ�����ȡ�ļ���
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

	echo "<script>alert('������ҳ�����ɹ�!');location.href='../banner.php';</script>";
}

if(isset($_POST[task]) && "addLink"==$_POST[task] ){
	$db->query("insert into link(link_name,link_url,create_date) values('$_POST[link_name]','$_POST[link_url]',now())");
	echo "<script>alert('��������ɹ�!');location.href='../link.php';</script>";
}

else if(isset($_POST[task]) && "updateLink"==$_POST[task] ){
	$db->query("update link set link_name='$_POST[link_name]',link_url='$_POST[link_url]' where id='$_POST[id]'");
	echo "<script>alert('�޸������ɹ�!');location.href='../link.php';</script>";
}
else if(isset($_GET[task]) && "deleteLink"==$_GET[task] ){
	$db->query("delete from link where id='".$_GET[id]."'")	;
	echo "<script>alert('ɾ�������ɹ�!');location.href='../link.php';</script>";
}
?>
