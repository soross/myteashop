<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");

//ͼƬ

$imagelist = getListBySql("select id,comm_code as url,comm_value,comm_flag  from boya_config where comm_type='AD_Images'", $db );
$smarty->assign("imagelist",$imagelist);

//��Ŀ����--�γ�

$lmlist = getListBySql("select id,type_name as name,url,seq as typeid,index_url  from boya_type where pid='2' order by seq", $db);
$smarty->assign("lmlist",$lmlist);

//��Ŀ����--�γ�

$zxlmlist = getListBySql("select id,type_name as name,url,seq as typeid,index_url  from boya_type where pid='0' order by seq", $db);
$smarty->assign("zxlmlist",$zxlmlist);


if(isset($_GET[typeid])&&!empty($_GET[typeid])&&$_GET[typeid]!=15){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
    $smarty->assign("taskid","15");
}

//ͼƬչʾ��
$piclist = getListBySql("select id,title,path,content,create_date,url from boya_news order by create_date desc limit 0,15", $db );
$smarty->assign("piclist",$piclist);




$where = " where 1=1 ";
if(isset($_GET[typeid])&&!empty($_GET[typeid])&&$_GET[typeid]!=15){
	$where = $where." and type_id ='$_GET[typeid]' ";
	$infocn = getListBySql("select * from boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn[0]);
}else{
	$where = $where." and type_id ='5' ";
	$infocn = getListBySql("select * from  boya_type where id ='5'" ,$db);
	$smarty->assign("infocn",$infocn[0]);
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
if(isset($_GET[typeid])&&!empty($_GET[typeid])&&$_GET[typeid]!=15){
$courseRow = getListBySql("select * from boya_course ".$where ."order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("courseRow",$courseRow);
}else{
$courseRow = getListBySql("select * from boya_course order by create_date desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("courseRow",$courseRow);

}




$smarty->display("index.html");
?>
