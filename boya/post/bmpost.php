<?php
if(isset($_POST[task]) && md5('RegUser')==$_POST[task]){
	include_once("../action/mysql.class.php");
	$db->query("insert into boya_reg_user(username,gender,college,work_unit,mobile,telephone,qq,email,course,cnt,create_date)  " .
			" select '$_POST[username]','$_POST[sex]','$_POST[certi]','$_POST[address]','$_POST[telephone]','$_POST[phone]','$_POST[qqcode]','$_POST[email]'" .
			",'$_POST[course]','$_POST[amount]',now() from boya_reg_user;");
	echo "<script>alert('您已报名成功，本校工作人员将48小时内与您联系确认。谢谢！');location.href='../wsbm.php';</script>";
}
?>

