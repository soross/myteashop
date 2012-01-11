<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//一级目录
$eduTitleRow = getRows("college_type",$db,"id,pid,link_url,college_title_".$currlang." as menu_name  ");
$smarty->assign("titleRows",$eduTitleRow);

/**
//小百科
$eduSonTitleRow = getRows("menu where pid='13'",$db,"id,pid,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleSonRows",$eduSonTitleRow);

//使用方法
$eduSonTitleRow2 = getRows("college c,menu m where lang='".$currlang."' and c.type_id=m.id",$db,"c.type_id as type_id,m.id as id,m.pid as pid,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleSonRows2",$eduSonTitleRow2);
**/

//详细信息
$typeid=1;
$sql="college c,college_type t where  c.type_id=t.id and type_id='$typeid'";
if(!empty($_GET[typeid])&&""!=$_GET[typeid]){
	$typeid=$_GET[typeid];

	$query = $db->query("select id from college_type where pid='$typeid'");
	$cnt=$db->db_num_rows();
	if($cnt>0){
		$sql = "college c,college_type t where c.type_id=t.id and type_id=(select min(id) from college_type t where t.pid='$typeid')";
		$smarty->assign("script","<script>showSonMenu('$_GET[typeid]');</script>");
	}else{
		$sql="college c,college_type t where  c.type_id=t.id and type_id='$typeid'";
	}
}

$eduInfo = getInfo($sql,$db,"c.id,c.content_".$currlang." as content,t.college_title_".$currlang." as menu_name  ");
$smarty->assign("eduInfo",$eduInfo);

//show=yes是否展示
if(!empty($_GET[show])){
   	$smarty->assign("script","<script>showSonMenu('$_GET[show]');</script>");
}


$smarty->display("college.html");
?>
