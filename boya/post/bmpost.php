<?php
include_once("../action/mysql.class.php");
if(isset($_POST[task]) && md5('RegUser')==$_POST[task]){


	$opentime = getListBySql("SELECT c.open_time as open_time FROM boya_course AS c JOIN boya_type AS t ON c.type_id = t.id and c.id=$_POST[course]",$db);

	$opentime = $opentime[0][open_time];

	$db->query("insert into boya_reg_user(username,gender,college,work_unit,mobile,telephone,qq,email,course,create_date,open_time)  " .
			" value('$_POST[username]','$_POST[sex]','$_POST[certi]','$_POST[address]','$_POST[telephone]','$_POST[phone]','$_POST[qqcode]','$_POST[email]'" .
			",'$_POST[course]',now(),'$opentime') ");
	echo "<script>alert('���ѱ����ɹ�����У������Ա��48Сʱ��������ϵȷ�ϡ�лл��');location.href='../wsbm.php';</script>";
}
?>
