<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "orderpass"==$_GET[task]){
	if(isset($_GET[id]) && !empty($_GET[id])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update orderpass set orderpass='".md5($_GET[orderpass])."' where id ='".$_GET[id]."'" );
			echo "<script>alert('�����޸ĳɹ�!');location.href='../orderpass.php';</script>";
		}else{
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../orderpass.php';</script>";
		}
	}else{
		echo "<script>alert('�Ƿ�����!".$_GET[id]."');location.href='../admin.php';</script>";
	}
}
?>
