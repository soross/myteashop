<?php
require_once("../action/global_action.php");

if(empty ($_GET[page])||empty($_GET[task])){
	$param = "";
	if(!empty ($_GET[page])){
		$param = "?page=$_GET[page]";
	}
	echo "<script>location.href='newslist.php".$param."';</script>";
	exit;
}else if (isset ($_GET[task]) && "editNews" == $_GET[task]) {
	//������Ϣ
	$newsinfoquery = $db->query("select id,title,content,news_class,author,src from news where id = '".$_GET[id]."'");
	$newsinforow = $db->fetch_array($newsinfoquery);
	$smarty->assign("info",$newsinforow);

	//ҳ����Ϣ
	$cpage = '';
	if(!empty ($_GET[page])){
		$cpage = $_GET[page];
	}
	$smarty->assign("page",$cpage);

	//���ŷ���
	$queryNewsClass = $db->query("select id,class_name from news_class");
	$rowsNC= array();
	while($rowNewsClass = $db->fetch_array($queryNewsClass)){
		$rowsNC[] = $rowNewsClass;
	}
	$smarty->assign("newsClassList",$rowsNC);

	$smarty->display("news/newsedit.html");
}
?>
