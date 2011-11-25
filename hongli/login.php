<?php
if(!isset($_SESSION)){
	session_start();
}
if(isset($_GET[task]) && "logout"==$_GET[task]){
	setcookie('WEB_USER_LOGIN_UID_COOKIE','',(time()+ (20*60)),'/');//s
	setcookie('WEB_USER_LOGIN_UID_TYPE_COOKIE','',(time()+ (20*60)),'/');
	setcookie('WEB_USER_LOGIN_COOKIE','',(time()+ (20*60)),'/');
	setcookie('WEB_USER_LOGIN_ONTIME_COOKIE','',(time()+ (20*60)),'/') ;
	session_destroy();
}
/**
if(isset($_COOKIE)){
	setcookie("RequireUrl", NULL);
	unset($_COOKIE);
}**/
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

if(isset($_GET["error"]) && $_GET["error"]=="-1"){
	$smarty->assign("errorInfo","ÕÊºÅÃÜÂë²»Æ¥Åä!");
}else if(isset($_GET["error"]) && $_GET["error"]=="-2"){
	$smarty->assign("errorInfo","ÑéÖ¤Âë´íÎó!");
}else if(isset($_GET["error"]) && $_GET["error"]=="0"){
	$smarty->assign("errorInfo","»áÔ±ÀàÐÍ´íÎó!");
}else{
	$smarty->assign("errorInfo","OK");
}

$query=$db->query("select * from lm_comm_code where type_name='LoginAdCode'");

$pics = "";
$links = "";
$texts = "";
$index=1;
while($adInfo = $db->fetch_array($query)){
	if($index==4){
		$pics = $pics.$adInfo[type_code]."';";
		$links = $links.$adInfo[type_url]."';";
	}else{
		$pics = $pics.$adInfo[type_code]."|";
		$links = $links.$adInfo[type_url]."|";
	}
	$index++;
}
$ad = "var pics = '".$pics." var links = '".$links." var texts = '||||';";
//printf($ad);

$smarty->assign("ad",$ad);


$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",html_entity_decode($buttomInfo[content]));


$smarty->display("login.html");
?>
