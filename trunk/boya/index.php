<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");

//ͼƬ

$imagelist = getRows("boya_config where comm_type='AD_Images'", $db ," id,comm_code as url,comm_value,comm_flag ");
$smarty->assign("imagelist",$imagelist);

//��Ŀ����--�γ�

$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid,index_url  ");
$smarty->assign("lmlist",$lmlist);

if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
    $smarty->assign("taskid","5");
}

//ͼƬչʾ��
$piclist = getRows("boya_news order by create_date desc", $db ,"id,title,path,content,create_date,url");
$smarty->assign("piclist",$piclist);


$where = " where 1=1 ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id ='$_GET[typeid]' ";
	$infocn = getInfo(" boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn);
}else{
	$where = $where." and type_id ='5' ";
	$infocn = getInfo(" boya_type where id ='5'" ,$db);
	$smarty->assign("infocn",$infocn);
}


//��ҳ
$pagesize = 8;//һҳ��ʾ������
$queryTotal = $db->query("select id,type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level from boya_course" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

//print_r($where);

//ѡ����Ŀ�б�
$courseRow = getRows("boya_course ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("courseRow",$courseRow);


$smarty->display("index.html");
?>
