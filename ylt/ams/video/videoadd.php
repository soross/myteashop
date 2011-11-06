<?php
require_once("../action/global_action.php");

if("uploadVideoFile"==$_GET[task]&& !empty($_GET[id])){
	$smarty->assign("videoID",$_GET[id]);
	$smarty->display("video/videoupload.html");
}else{
	$smarty->display("video/videoadd.html");
}
?>
