<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
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
?>
