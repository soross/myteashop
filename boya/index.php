<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");

//图片

$imagelist = getListBySql("select id,comm_code as url,comm_value,comm_flag  from boya_config where comm_type='AD_Images'", $db );
$smarty->assign("imagelist",$imagelist);

//栏目类型--课程

$lmlist = getListBySql("select id,type_name as name,url,seq as typeid,index_url  from boya_type where pid='2' order by seq", $db);
$smarty->assign("lmlist",$lmlist);

if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
    $smarty->assign("taskid","5");
}

//图片展示区
$piclist = getListBySql("select id,title,path,content,create_date,url from boya_news order by create_date desc limit 0,15", $db );
$smarty->assign("piclist",$piclist);




$where = " where 1=1 ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id ='$_GET[typeid]' ";
	$infocn = getListBySql("select * from boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn[0]);
}else{
	$where = $where." and type_id ='5' ";
	$infocn = getListBySql("select * from  boya_type where id ='5'" ,$db);
	$smarty->assign("infocn",$infocn[0]);
}


//分页
$pagesize = 5;//一页显示多少条
$queryTotal = $db->query("select id,type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level from boya_course" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//print_r($where);

//选择栏目列表
$courseRow = getListBySql("select * from boya_course ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("courseRow",$courseRow);




$smarty->display("index.html");
?>
