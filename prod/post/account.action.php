<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
	if(isset($_POST[task]) && "addUser"==$_POST[task]){
		if($_POST[password]==$_POST[password2]){
			if( $_POST[orderpass]==$_POST[orderpass2]){
				$db->query("select * from user where username='".$_POST[username]."'");
				$cnt = $db->db_num_rows();
				if($cnt<1){
					$db->query("insert into user(username,password,realname,orderpass,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."','".md5($_POST[password])."',now())");
					$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增管理员帐号","新增管理员帐号成功");
					echo "<script>if(confirm('管理员帐号新增成功,是否继续新增?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
				}else{
					$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增管理员帐号","该管理员帐号已存在!");
					echo "<script>alert('该管理员帐号已存在!');location.href='../adduser.php';</script>";
				}
			}else{
				$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增管理员帐号","订单密码不一致!");
				echo "<script>alert('订单密码不一致!');location.href='../adduser.php';</script>";
			}
		}else{
			$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增管理员帐号","用户密码不一致!");
			echo "<script>alert('用户密码不一致!');location.href='../adduser.php';</script>";
		}
	}
}else{
	$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增管理员帐号","权限不够!");
	echo "<script>alert('您的权限不够,请联系管理员!');location.href='../adduser.php';</script>";
}
if(isset($_POST[task]) && "UpdateUserPassword"==$_POST[task]){
	if(isset($_POST[aamsid]) && !empty($_POST[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_POST[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			if(!empty($_POST[password])&& empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[password])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改用户密码","修改用户密码成功");
				echo "<script>alert('用户密码修改成功!');location.href='../userlist.php';</script>";
			}else if(empty($_POST[password])&&!empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[orderpass])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改订单密码","修改订单密码成功");
				echo "<script>alert('订单密码修改成功!');location.href='../userlist.php';</script>";
			}else if(isset($_POST[password])&&!empty($_POST[password])&&isset($_POST[orderpass])&&!empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[password])."', orderpass='".md5($_POST[orderpass])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改用户密码和订单密码","修改用户密码和订单密码成功");
				echo "<script>alert('用户密码和订单密码修改成功!');location.href='../userlist.php';</script>";
			}else{
				echo "<script>alert('请输入您要修改的密码!');location.href='../userlist.php';</script>";
			}
		}else{
			$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","修改用户密码和订单密码","您不是管理员,无法修改别人的密码!");
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../userlist.php';</script>";
		}
	}else{
		$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","修改用户密码和订单密码","非法操作");
		echo "<script>alert('非法操作!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  user where id ='".$_GET[aamsid]."'" );
		$db->addLog("CAP10002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除帐号","删除帐号成功！");
		echo "<script>alert('帐号删除成功!');location.href='../userlist.php';</script>";
	}else{
		$db->addLog("CAP10002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除帐号","您不是管理员,无法删除账户!");
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
	$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改管理员信息","管理员信息更新成功!");
	echo "<script>alert('管理员信息更新成功!');location.href='../inc/tab.php';</script>";
}
?>
