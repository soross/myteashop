<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");


$db->query("insert into boya_reg_user(id,username,gender,college,work_unit,mobile,telephone,qq,email,course,cnt,create_date,money,remark)  " .
		" select max(id)+1,'$_POST[username]','$_POST[sex]','$_POST[certi]','$_POST[address]','$_POST[telephone]','$_POST[phone]','$_POST[qqcode]','$_POST[email]'" .
		",'$_POST[course]','$_POST[amount]',DATE_FORMAT('$_POST[times]','%Y-%m-%d'),'$_POST[money]','$_POST[leaveMessage]' from boya_reg_user;");
echo "<script>alert('���ѱ����ɹ�����У������Ա��48Сʱ��������ϵȷ�ϡ�лл��');location.href='wsbm.php';</script>";
?>

