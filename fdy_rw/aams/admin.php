<?php
	if(isset($_GET[task]) && "logout"==$_GET[task]){
		if(!isset($_SESSION)){
			session_start();
		}
		session_destroy();

		echo "<script>location.href='admin.php';</script>";
		exit;
	}else{
		require_once("action/smarty_inc.php");
		$smarty->display("admin.html");
	}
?>
