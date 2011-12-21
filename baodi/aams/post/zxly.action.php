<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deletezxly"==$_GET[task]){
	$db->query("delete from dlzxly where id = '$_GET[zxlyid]'");
	echo "<script>alert('留言删除成功?');location.href='../zxly.php';</script>";
}
else if(isset($_POST[task]) && "alldelzxly"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from dlzxly where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('删除成功！');location.href='../zxly.php';</script>");
}else{
echo("<script type='text/javascript'>alert('删除成功失改！');location.href='../zxly.php';</script>");
}
}
?>
