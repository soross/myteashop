<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deletezxly"==$_GET[task]){
	$db->query("delete from dlzxly where id = '$_GET[zxlyid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../zxly.php';</script>";
}
else if(isset($_POST[task]) && "alldelzxly"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //���ո�ѡ���ֵ   Ϊ����
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from dlzxly where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('ɾ���ɹ���');location.href='../zxly.php';</script>");
}else{
echo("<script type='text/javascript'>alert('ɾ���ɹ�ʧ�ģ�');location.href='../zxly.php';</script>");
}
}
?>
