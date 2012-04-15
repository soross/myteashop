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

else if(isset($_POST[task]) &&$_POST[task]== "checkOrderPassword" ){
	require_once ("../action/mysql.class.php");
	session_start();
	$userid = $_POST[id];
	$query = $db->query("select * from user where id = '" . $userid. "'");
	$us = is_array($row = $db->fetch_array($query));
	$ps = $us ? md5($_POST[orderpass]) == $row[orderpass] : FALSE;
	if ($ps) {
		$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] =  mktime();
		echo "<script>location.href='../orderlist.php'</script>";
	} else {
		echo "#".$userid."#".md5($_POST[orderpass])."#".$row[orderpass]."##";
		echo "<script>alert('用户名或密码错误!');location.href='../orderpass.php'</script>";//?error=".md5('PASSWORD')."
	}

}
?>
