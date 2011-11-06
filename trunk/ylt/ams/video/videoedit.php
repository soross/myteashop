<?php
require_once("../action/global_action.php");
//task=editVideos&id=4&page=1
if(empty ($_GET[page])||empty($_GET[task])){
	$param = "";
	if(!empty ($_GET[page])){
		$param = "?page=$_GET[page]";
	}
	echo "<script>location.href='videolist.php".$param."';</script>";
	exit;
}else if (isset ($_GET[task]) && "editVideo" == $_GET[task]) {
	//视讯信息
	$newsinfoquery = $db->query("select id,video_name,video_picture,video_desc,create_date,video_path from video where id = '".$_GET[id]."'");
	$newsinforow = $db->fetch_array($newsinfoquery);
	$smarty->assign("info",$newsinforow);

	//页码信息
	$cpage = '';
	if(!empty ($_GET[page])){
		$cpage = $_GET[page];
	}
	$smarty->assign("page",$cpage);

	$smarty->display("video/videoedit.html");
}
?>
