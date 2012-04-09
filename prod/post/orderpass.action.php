<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "orderpass"==$_GET[task]){
	if(isset($_GET[id]) && !empty($_GET[id])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update orderpass set orderpass='".md5($_GET[orderpass])."' where id ='".$_GET[id]."'" );
			echo "<script>alert('密码修改成功!');location.href='../orderpass.php';</script>";
		}else{
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../orderpass.php';</script>";
		}
	}else{
		echo "<script>alert('非法操作!".$_GET[id]."');location.href='../admin.php';</script>";
	}
}
?>
