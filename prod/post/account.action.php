<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
	if(isset($_POST[task]) && "addUser"==$_POST[task]){
		if($_POST[password]==$_POST[password2]){
			$db->query("select * from user where username='".$_POST[username]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into user(username,password,realname,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."',now())");
				echo "<script>if(confirm('����Ա�ʺ������ɹ�,�Ƿ��������?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			}else{
				echo "<script>alert('�ù���Ա�ʺ��Ѵ���!');location.href='../adduser.php';</script>";
			}
		}else{
			echo "<script>alert('�������벻һ��!');location.href='../adduser.php';</script>";
		}
	}
}else{
	echo "<script>alert('����Ȩ�޲���,����ϵ����Ա!');location.href='../adduser.php';</script>";
}
if(isset($_GET[task]) && "toUpdateUser"==$_GET[task]){
	if(isset($_GET[aamsid]) && !empty($_GET[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update user set password='".md5($_GET[password])."' where id ='".$_GET[aamsid]."'" );
			echo "<script>alert('�����޸ĳɹ�!');location.href='../userlist.php';</script>";
		}else{
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../userlist.php';</script>";
		}
	}else{
		echo "<script>alert('�Ƿ�����!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  user where id ='".$_GET[aamsid]."'" );
		echo "<script>alert('�ʺ�ɾ���ɹ�!');location.href='../userlist.php';</script>";
	}else{
		echo "<script>alert('�����ǹ���Ա,�޷�ɾ���˻�!');location.href='../userlist.php';</script>";
	}
}


//������Ϣ
else if(isset($_POST[task]) && "updateAdminUserInfo"==($_POST[task])){
	$sql = "update user set ";
	if(isset($_POST[password]) &&  !empty($_POST[password]) && $_POST[password]==$_POST[password_confirm]){
		$sql = $sql." password='".md5($_POST[password])."' , realname='".$_POST[realname]."' ";
	}else{
		$sql = $sql." realname='".$_POST[realname]."' ";
	}
	$sql = $sql." where id=' ". $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']." '";
	$db->query($sql);
	echo "<script>alert('����Ա��Ϣ���³ɹ�!');location.href='../inc/tab.php';</script>";
}
?>
