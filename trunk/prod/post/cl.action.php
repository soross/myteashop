<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

//新增材料
if(isset($_POST[task]) && "addCl"==$_POST[task]){
	$sql = "insert into cl(clid,clname,clgg,unit,price,create_date) values('$_POST[clid]','$_POST[clname]','$_POST[clgg]','$_POST[unit]','$_POST[price]',now())";
	$db->query($sql);
	$db->addLog("CAP02001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增材料","材料新增成功!");
	echo "<script>if(confirm('材料新增成功,是否继续新增?')){location.href='../addcl.php';}else{location.href='../cllist.php';}</script>";
//删除材料
}else if(isset($_GET[task]) && "deleteCl"==$_GET[task]){
	$db->query("delete from cl where id='$_GET[clid]'");
	$db->addLog("CAP02002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除材料","删除材料成功!");
	echo "<script>alert('材料删除成功!');location.href='../cllist.php?page=$GET[cpage]';</script>";

//修改材料
}else if(isset($_POST[task]) && "updateCl"==$_POST[task]){
	$db->query("update cl set clid='$_POST[clid]',clname='$_POST[clname]',clgg='$_POST[clgg]',unit='$_POST[unit]',price='$_POST[price]' where id = $_POST[id]");
	$db->addLog("CAP02003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改材料","修改材料成功!");
	echo "<script>if(confirm('材料修改成功,是否继续修改?')){location.href='../updatecl.php?clid=$_POST[id]';}else{location.href='../cllist.php';}</script>";

}else{
	$db->addLog("CAP02003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","修改材料","操作失败!");
	echo "<script>alert('操作失败!');window.history.back(-1);</script>";
}
?>
