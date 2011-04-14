<?php
$code = $_POST["code"];
session_start();
$randcode = $_SESSION['validationcode'];

if($code == $randcode){
	require_once('../db/conn.php');
	$utc=date("T");
	if ($utc=="UTC")
	$h=date("H")+8;
	$create_date=date("Y-m-d ".$h.":i:s");
	//echo $create_date;
	//$sql = "insert into message(username,title,link,email,content,create_date,is_flag)".
	//	"($username,$title,$link,$email,$content,'$create_date',0)";
	$sql = "insert into message(username,title,link,email,is_flag,create_date,content)".
		"values('".$_POST[username]."','".$_POST[title]."','".$_POST[phone]."','".$_POST[email]."','0','$create_date','".htmtocode($_POST[content])."')";
	//mysql_select_db("wjc", $conn);
	if(mysql_query($sql,$conn)){
		//echo "aaa";
		mysql_close($conn);
		echo "<script>alert('恭喜您,您的留言成功了,谢谢您的宝贵建议,我们将第一时间与您联系。');location.href='service.php';</script>";
	}else{
		 die('Error:' . mysql_error());
		 mysql_close($conn);
		 echo "<script>alert('非常抱歉,您的留言失败了,因为正在系统升级,请通过其他方式联系我们,谢谢！');location.href='service.php';</script>";
	}
}else{
	echo "<script>alert('非常抱歉,您的留言失败了,因为您验证码输错咯。');location.href='service.php';</script>";
}
?>
