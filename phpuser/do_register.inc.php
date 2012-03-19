<?php
	session_start();
	include("dbconnect.inc.php");
	include("functions.inc.php");
	#如果php配置中，magic_quotes_gpc没有被设置，则执行过滤字符串。
	$form = ($_POST["edit"]);
	if( $_POST["edit"]["img"] != $_SESSION["Checknum"]){
		echo "<script>alert('验证码错误！');history.go(-1);</script>";
		return;
	}
	$form = check_form($_POST["edit"]);
	date_default_timezone_set("Asia/Hong_Kong");
	$form["reg_time"] = date("Y-m-d H:i:s");
	$form["pass"] = md5($form["pass"]);
	extract($form);
	$sql = "insert into users( username,password,sex,mail,tel,web,birthday,inter,intro,reg_time) ";
	#这里{}符号是代表在字符串中引用当前环境的变量
	$sql .= " values('{$name}',";
	$sql .= " '{$pass}',";
	$sql .= " '{$sex}',";
	$sql .= " '{$mail}', ";
	$sql .= " '{$tel}', ";
	$sql .= " '{$web}', ";
	$sql .= " '{$birthday}', ";
	$sql .= " '{$inter}', ";
	$sql .= " '{$intro}', ";
	$sql .= " '{$reg_time}') ";
	$res1 = mysql_query($sql);
	$sql2 = "insert into domain_detail values ( ".mysql_insert_id().",'','')";
	$res2 = mysql_query($sql2);
	if(!$res1 or !$res2) {
		die("数据库出错，请返回重试。");
	}
	
	header("Location:msg.php?m=register_success");
?>