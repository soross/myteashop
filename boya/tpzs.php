<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");





$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

$courselist = getRows("boya_course where isselect=1 order by create_date desc ", $db ," id,concat(class_name,'--',course_name) as course_name,fee ");
$smarty->assign("courselist",$courselist);


if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
	$smarty->assign("taskid","13");
}
$where = " where 1=1 ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." order by create_date ";
	$infocn = getInfo(" boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn);
}
else{
	$where = $where." order by create_date ";
	$infocn = getInfo(" boya_type where id ='13'" ,$db);
	$smarty->assign("infocn",$infocn);
}

//��ҳ
$pagesize = 8;//һҳ��ʾ������
$queryTotal = $db->query("select id,title,path,content,create_date,url from boya_news" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//print_r($where);

$smarty->display("tpzs.html");
?>