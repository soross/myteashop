<?php
require_once("../action/global_action.php");
if($_POST[update]){
	if(isset($_POST[task])&&"contactUs"==$_POST[task]){
		$db->query("update comm_info set info_im='$_POST[im]', info_address='$_POST[address]',info_email='$_POST[email]',info_phone='$_POST[phone]',info_link_name='$_POST[link_name]',info_mobile='$_POST[mobile]' where id='$_POST[id]'");
		echo "<script>alert('更新成功!');location.href='../inc/admin_main.php'</script>";
	}else if(isset($_POST[task])&&"company"==$_POST[task]){
		$db->query("update comm_info set remark = '$_POST[content]' where id='$_POST[id]'");
		echo "<script>alert('更新成功!');location.href='../inc/admin_main.php'</script>";
	}
}else{
	echo "<script>alert('更新失败,请重试!');location.href='../inc/admin_main.php'</script>";
}
?>
