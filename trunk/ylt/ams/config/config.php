<?php
require_once("../action/global_action.php");
if($_POST[update]){
	if(isset($_POST[task])&&"contactUs"==$_POST[task]){

		$str = "公司电话：".trim($_POST[phone])."&nbsp;&nbsp;公司传真：".trim($_POST[mobile])."&nbsp;&nbsp;电子邮箱：<A title=发邮件给我们 href='mailto:".trim($_POST[email])."'>".trim($_POST[email])."</A><BR>Copyright &copy; 2011-2013&nbsp;&nbsp;<STRONG><FONT style='color:#FF6600;'>厦门艺铃通贸易有限公司</FONT></STRONG>&nbsp;&nbsp;版权所有&nbsp;&nbsp;域名：<A href='http://www.smarthousekeeper.com' >http://www.smarthousekeeper.com</A>";

		$db->query("update comm_info set info_value='".addslashes($str)."' where info_type='ButtomInfo' and id='$_POST[id]'");

		echo "<script>alert('更新成功!');location.href='../inc/admin_main.php'</script>";
	}else if(isset($_POST[task])&&"company"==$_POST[task]){
		$db->query("update comm_info set remark = '$_POST[content]' where id='$_POST[id]'");
		echo "<script>alert('更新成功!');location.href='../inc/admin_main.php'</script>";
	}
}else{
	echo "<script>alert('更新失败,请重试!');location.href='../inc/admin_main.php'</script>";
}
?>
