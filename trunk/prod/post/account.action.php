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
				echo "<script>if(confirm('管理员帐号新增成功,是否继续新增?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			}else{
				echo "<script>alert('该管理员帐号已存在!');location.href='../adduser.php';</script>";
			}
		}else{
			echo "<script>alert('两次密码不一致!');location.href='../adduser.php';</script>";
		}
	}
}else{
	echo "<script>alert('您的权限不够,请联系管理员!');location.href='../adduser.php';</script>";
}
if(isset($_GET[task]) && "toUpdateUser"==$_GET[task]){
	if(isset($_GET[aamsid]) && !empty($_GET[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update user set password='".md5($_GET[password])."' where id ='".$_GET[aamsid]."'" );
			echo "<script>alert('密码修改成功!');location.href='../userlist.php';</script>";
		}else{
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../userlist.php';</script>";
		}
	}else{
		echo "<script>alert('非法操作!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  user where id ='".$_GET[aamsid]."'" );
		echo "<script>alert('帐号删除成功!');location.href='../userlist.php';</script>";
	}else{
		echo "<script>alert('您不是管理员,无法删除账户!');location.href='../userlist.php';</script>";
	}
}


//更新信息
else if(isset($_POST[task]) && "updateAdminUserInfo"==($_POST[task])){
	$sql = "update user set ";
	if(isset($_POST[password]) &&  !empty($_POST[password]) && $_POST[password]==$_POST[password_confirm]){
		$sql = $sql." password='".md5($_POST[password])."' , realname='".$_POST[realname]."' ";
	}else{
		$sql = $sql." realname='".$_POST[realname]."' ";
	}
	$sql = $sql." where id=' ". $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']." '";
	$db->query($sql);
	echo "<script>alert('管理员信息更新成功!');location.href='../inc/tab.php';</script>";
}
?>
