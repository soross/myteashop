<?php
require_once("../../action/global_post.php");
if(isset($_POST[task])&&"updateImInfo"==$_POST[task]){
	$db->query("update comm_info set info_value = '".$_POST[imCode]."' where id = '$_POST[id]'");
	echo "<script>alert('�ͷ���Ϣ�޸ĳɹ�!');location.href='../imms.php';</script>";
}
if(isset($_POST[task])&&"ContactInfoUpdate"==$_POST[task]){
	$db->query("update comm_info set info_value = '".$_POST[content]."' where id = '$_POST[id]'");
	echo "<script>alert('��ϵ��Ϣ�޸ĳɹ�!');location.href='../contact.php?type=".$_POST[type]."';</script>";
}
?>
