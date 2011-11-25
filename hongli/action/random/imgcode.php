<?php
    if(!isset($_SESSION)){
		session_start();
	}
    require_once('ValidationCode.php');
    $image = new ValidationCode();
    $image->showImage();
    $_SESSION['validationcode'] =$image->getCheckCode();
?>