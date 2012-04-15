<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addStaff"==$_POST[task]){
	$db->query("select * from staff where staffid='".$_POST[staffid]."'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$db->query("insert into staff(staffid,staffname,gwid,tell,bz,create_date)" .
				"values('$_POST[staffid]','$_POST[staffname]','$_POST[gwid]','$_POST[tell]','$_POST[bz]',now())");
		echo "<script>if(confirm('员工新增成功,是否继续新增?')){location.href='../addstaff.php';}else{location.href='../stafflist.php';}</script>";
	}else{
		echo "<script>alert('该客户已存在!');location.href='../addstaff.php';</script>";
	}
}else if(isset($_GET[task]) && "delStaff"==$_GET[task]){
	$db->query("delete from staff where id = '$_GET[id]'");
	echo "<script>alert('删除成功?');location.href='../stafflist.php';</script>";
}else if(isset($_POST[task]) && "updStaff"==$_POST[task]){
	   	//print_r(custid);
		$db->query("update staff set staffid='$_POST[staffid]',staffname='$_POST[staffname]',gwid='$_POST[gwid]',tell='$_POST[tell]',bz='$_POST[bz]' where id='$_POST[id]'");
		echo "<script>if(confirm('员工修改成功,是否继续修改?')){location.href='../updstaff.php?upd_id=$_POST[id]';}else{location.href='../stafflist.php';}</script>";
}



?>
