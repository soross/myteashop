<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
	if(isset($_POST[task]) && "addAamsUser"==$_POST[task]){
		if($_POST[password]==$_POST[password2]){
			$db->query("select * from lm_aams_user where username='".$_POST[username]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into lm_aams_user(username,password,realname,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."',now())");
				echo "<script>if(confirm('����Ա�ʺ������ɹ�,�Ƿ��������?')){location.href='../addaamsuser.php';}else{location.href='../aamsuser.php';}</script>";
			}else{
				echo "<script>alert('�ù���Ա�ʺ��Ѵ���!');location.href='../addaamsuser.php';</script>";
			}
		}else{
			echo "<script>alert('�������벻һ��!');location.href='../addaamsuser.php';</script>";
		}
	}
}else{
	echo "<script>alert('����Ȩ�޲���,����ϵ����Ա!');location.href='../addaamsuser.php';</script>";
}
if(isset($_GET[task]) && "toUpdateAamsUser"==$_GET[task]){
	if(isset($_GET[aamsid]) && !empty($_GET[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update lm_aams_user set password='".md5($_GET[password])."' where id ='".$_GET[aamsid]."'" );
			echo "<script>alert('�����޸ĳɹ�!');location.href='../aamsuser.php';</script>";
		}else{
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../aamsuser.php';</script>";
		}
	}else{
		echo "<script>alert('�Ƿ�����!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  lm_aams_user where id ='".$_GET[aamsid]."'" );
			echo "<script>alert('�ʺ�ɾ���ɹ�!');location.href='../aamsuser.php';</script>";
	}else{
		echo "<script>alert('�����ǹ���Ա,�޷�ɾ���˻�!');location.href='../aamsuser.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteMessage"==$_GET[task]){
	$db->query("delete from  lm_qa where id ='".$_GET[qaid]."'" );
	echo "<script>alert('��������ɾ���ɹ�!');location.href='../message.php';</script>";
}
?>
