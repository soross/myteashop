<?php
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once('action/mysql.class.php');
if(isset($_GET[task])&&"delreguser"==$_GET[task]){
	$db->query("delete from boya_reg_user where id = '$_GET[regid]'");
	echo "<script>alert('������Ϣɾ���ɹ�');location.href='reguserlist.php';</script>";
}else{
	echo "<script>window.history.back();</script>";
}

if(isset($_POST[task]) && "alldelNews"==$_POST[task]){

	$selectsingle=$_POST['selectsingle'];            //���ո�ѡ���ֵ   Ϊ����
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from boya_reg_user where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('����������Ϣɾ���ɹ���');location.href='reguserlist.php';</script>");
}else{
echo("<script type='text/javascript'>alert('����������Ϣɾ���ɹ�ʧ�ģ�');location.href='reguserlist.php';</script>");
}
}
else{
	echo "<script>window.history.back();</script>";
}
?>
