<?php
require_once("../../action/global_post.php");
if(isset($_POST[task])&&"updateImInfo"==$_POST[task]){
	$db->query("update comm_info set remark = '".$_POST[imCode]."' where id = '$_POST[id]'");
	echo "<script>alert('客服信息修改成功!');location.href='../imms.php';</script>";
}
?>
