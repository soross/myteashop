<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//��������
if(isset($_POST[task]) && "addCl"==$_POST[task]){
	$sql = "insert into cl(clid,clname,clgg,unit,price,create_date) values('$_POST[clid]','$_POST[clname]','$_POST[clgg]','$_POST[unit]','$_POST[price]',now())";
	$db->query($sql);
	echo "<script>alert('����Ա��Ϣ���³ɹ�!');location.href='../inc/tab.php';</script>";
	echo "<script>if(confirm('���������ɹ�,�Ƿ��������?')){location.href='../addcl.php';}else{location.href='../cllist.php';}</script>";

//ɾ������
}else if(isset($_GET[task]) && "deleteCl"==$_GET[task]){
	$db->query("delete from cl where id='$_GET[clid]'");
	echo "<script>alert('����ɾ���ɹ�!');location.href='../cllist.php?page=$GET[cpage]';</script>";

//�޸Ĳ���
}else if(isset($_POST[task]) && "updateCl"==$_POST[task]){
	$db->query("update cl set clid='$_POST[clid]',clname='$_POST[clname]',clgg='$_POST[clgg]',unit='$_POST[unit]',price='$_POST[price]' where id = $_POST[id]");
	echo "<script>if(confirm('�����޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatecl.php?clid=$_POST[id]';}else{location.href='../cllist.php';}</script>";

}else{
	echo "<script>alert('����ʧ��!');window.history.back(-1);</script>";
}
?>
