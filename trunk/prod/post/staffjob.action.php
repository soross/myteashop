<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addStaffjob"==$_POST[task]){
		$db->query("insert into staffjob(custid,custname,linkman,tell,yhy,yhytell,bz)" .
				"values('$_POST[custid]','$_POST[custname]','$_POST[linkman]','$_POST[tell]','$_POST[yhy]','$_POST[yhytell]','$_POST[bz]')");
		$db->addLog("CAP14001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增员工作业","新增员工作业成功!");
		echo "<script>if(confirm('新增员工作业成功,是否继续新增?')){location.href='../addcustomer.php';}else{location.href='../customerlist.php';}</script>";
}else if(isset($_GET[task]) && "delStaffjob"==$_GET[task]){
	$db->query("delete from staffjob where id = '$_GET[id]'");
	$db->addLog("CAP14002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除员工作业","删除员工作业成功!");
	echo "<script>alert('删除成功?');location.href='../staffjoblist.php';</script>";
}else if(isset($_POST[task]) && "updStaffjob"==$_POST[task]){

		$db->query("update staffjob set custid='$_POST[custid]',custname='$_POST[custname]',linkman='$_POST[linkman]',tell='$_POST[tell]'," .
				"yhy='$_POST[yhy]',yhytell='$_POST[yhytell]',bz='$_POST[bz]' where id='$_POST[id]'");
		$db->addLog("CAP14003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改员工作业","修改员工作业成功!");
		echo "<script>alert('修改成功!');location.href='../customerlist.php';";


}



?>
