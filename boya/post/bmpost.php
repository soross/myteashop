<?php
if(isset($_POST[task]) && md5('RegUser')==$_POST[task]){
	include_once("../action/mysql.class.php");
	$db->query("insert into boya_reg_user(username,gender,college,work_unit,mobile,telephone,qq,email,course,cnt,create_date)  " .
			" select '$_POST[username]','$_POST[sex]','$_POST[certi]','$_POST[address]','$_POST[telephone]','$_POST[phone]','$_POST[qqcode]','$_POST[email]'" .
			",'$_POST[course]','$_POST[amount]',now() from boya_reg_user;");
	echo "<script>alert('���ѱ����ɹ�����У������Ա��48Сʱ��������ϵȷ�ϡ�лл��');location.href='../wsbm.php';</script>";
}
?>

