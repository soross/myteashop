<?php
require_once("../action/global_action.php");
if($_POST[update]){
	if(isset($_POST[task])&&"contactUs"==$_POST[task]){

		$str = "��˾�绰��".trim($_POST[phone])."&nbsp;&nbsp;��˾���棺".trim($_POST[mobile])."&nbsp;&nbsp;�������䣺<A title=���ʼ������� href='mailto:".trim($_POST[email])."'>".trim($_POST[email])."</A><BR>Copyright &copy; 2011-2013&nbsp;&nbsp;<STRONG><FONT style='color:#FF6600;'>��������ͨó�����޹�˾</FONT></STRONG>&nbsp;&nbsp;��Ȩ����&nbsp;&nbsp;������<A href='http://www.smarthousekeeper.com' >http://www.smarthousekeeper.com</A>";

		$db->query("update comm_info set info_value='".addslashes($str)."' where info_type='ButtomInfo' and id='$_POST[id]'");

		echo "<script>alert('���³ɹ�!');location.href='../inc/admin_main.php'</script>";
	}else if(isset($_POST[task])&&"company"==$_POST[task]){
		$db->query("update comm_info set remark = '$_POST[content]' where id='$_POST[id]'");
		echo "<script>alert('���³ɹ�!');location.href='../inc/admin_main.php'</script>";
	}
}else{
	echo "<script>alert('����ʧ��,������!');location.href='../inc/admin_main.php'</script>";
}
?>
