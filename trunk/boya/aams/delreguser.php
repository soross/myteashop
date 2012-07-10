<?php
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');
if(isset($_GET[task])&&"delreguser"==$_GET[task]){
	$db->query("delete from boya_reg_user where id = '$_GET[regid]'");
	echo "<script>alert('报名信息删除成功');location.href='reguserlist.php';</script>";
}else{
	echo "<script>window.history.back();</script>";
}

if(isset($_POST[task]) && "alldelNews"==$_POST[task]){

	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from boya_reg_user where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('批量报名信息删除成功！');location.href='reguserlist.php';</script>");
}else{
echo("<script type='text/javascript'>alert('批量报名信息删除成功失改！');location.href='reguserlist.php';</script>");
}
}
else{
	echo "<script>window.history.back();</script>";
}
?>
