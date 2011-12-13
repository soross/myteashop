<?php
if(isset($_GET[lang])&& !empty($_GET[lang])){
	session_start();
	$_SESSION['Lang'] = $_GET[lang];
	//print_r( $_SESSION['Lang'] );
	echo "<script>window.history.back();;</script>";
}

?>
