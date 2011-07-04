<?php
header('Content-Type: text/html; charset=gbk');
session_start();
if('formsend'==$_POST[act]){
	if($_POST[imgCode] == $_SESSION[validationcode]){
		require_once("../../action/mysql.class.php");
		$db->query("insert into message(id,title,cust_name,link_name,phone,im_code,content,create_date,is_check) " .
				" values(NULL,'$_POST[title]','$_POST[company]','$_POST[name]','$_POST[tel]','$_POST[qq]','$_POST[content]',now(),'0')");
		echo 'OK';
	}else{
		echo '验证码错误,请重试!';
	}
}else{
	echo '非法提交留言，处理失败!';
}
?>
