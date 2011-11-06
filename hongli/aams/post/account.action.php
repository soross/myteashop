<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addAamsUser"==$_POST[task]){
	if($_POST[password]==$_POST[password2]){
		$db->query("select * from lm_aams_user where username='".$_POST[username]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query("insert into lm_aams_user(username,password,realname,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."',now())");
			echo "<script>if(confirm('管理员帐号新增成功,是否继续新增?')){location.href='../addaamsuser.php';}else{location.href='../aamsuser.php';}</script>";
		}else{
			echo "<script>alert('该管理员帐号已存在!');location.href='../addaamsuser.php';</script>";
		}
	}else{
		echo "<script>alert('两次密码不一致!');location.href='../addaamsuser.php';</script>";
	}
}
?>
