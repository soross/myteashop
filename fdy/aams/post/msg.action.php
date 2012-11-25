<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteMsg"==$_GET[task]){
	$db->query("delete from message where id = '$_GET[msgid]'");
	echo "<script>alert('ÁôÑÔÉ¾³ý³É¹¦?');location.href='../msg.php';</script>";
}else{
	echo "<script>alert('²Ù×÷Ê§°Ü!');window.history.back(-1);</script>";
}
?>
