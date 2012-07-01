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
	$typeRow = getRows("boya_news where  id='".$_GET[typeid]."' ",$db,"id");
	$where = $where." and id in( ";
	for($i=0;$i< count($typeRow);$i++){
		$row = $typeRow[$i];
		if($i+1 == count($typeRow)){
			$where = $where."'$row[id]'";
		}else{
			$where = $where." '$row[id]', ";
		}
	}
	$where = $where.") ";
}


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

//分页
$pagesize = 8;//一页显示多少条
$queryTotal = $db->query("select id from boya_news" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

//print_r($where);

//案例
$prodRow = getRows("boya_news ".$where ." desc limit $firstcount, $displaypg " ,$db);
$smarty->assign("prodRows",$prodRow);

$smarty->display("tpzs.html");
?>