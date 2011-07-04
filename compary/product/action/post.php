<?php
header('Content-Type: text/html; charset=gbk');
session_start();
if('formsend'==$_POST[act]){
	if($_POST[imgCode] == $_SESSION[validationcode]){
		require_once("../../action/mysql.class.php");
		//$_POST[products_num]
		$sql ="insert into prod_order(id,cust_name,link_name,phone,address,email,content,create_date,prod_count,prod_name,is_check) " .
				" values(NULL,'$_POST[company]','$_POST[cust_name]','$_POST[tel]','$_POST[address]','$_POST[email]','$_POST[content]',now(),'1','$_POST[products_name]','0')";
		$db->query($sql);
		echo 'OK';
	}else{
		echo '验证码错误,请重试!';
	}
}else{
	echo '非法提交产品订购信息，处理失败!';
}
?>
