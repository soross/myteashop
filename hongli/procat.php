<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/page.class.php");
require_once("action/public_info.php");
$smarty->assign("PROCAT_LI","class='beijingwu'");
$smarty->assign("PROCAT_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("PROCAT_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');


//商家分类
$sjTypeQuery = $db->query("select * from lm_sj_type");
$sjTypeRow = array();
while($rowsjType = $db->fetch_array($sjTypeQuery)){
	$sjTypeRow[] = $rowsjType;
	if($rowsjType[id]==$sjType){
		$smarty->assign("sjTypeName",$rowsjType[name]);
	}
}
$smarty->assign("sjTypeRow",$sjTypeRow);

//商家信息
//拼装条件
$where = " where 1=1 ";
//省市
if(isset($_GET[pkey]) && !empty($_GET[pkey])){
	$where = $where. " and province = '".urldecode($_GET[pkey])."' ";
	$smarty->assign("cpValues","<script>selectOption('".urldecode($_GET[pkey])."')</script>");
}
if(isset($_GET[ckey]) && !empty($_GET[ckey])){
	$where = $where. " and city = '".urldecode($_GET[ckey])."' ";
}
if(isset($_GET[key]) && !empty($_GET[key])){
	$where = $where. " and (sj_name like '%".urldecode($_GET[key])."%' or sj_desc like '%".urldecode($_GET[key])."%' )";
	$smarty->assign("keyValues","<script>writeShopKeyValue('".urldecode($_GET[key])."')</script>");
}



if(isset($_POST[task])&&"searchProcat"==$_POST[task]){
	if(isset($_POST[szSheng]) && !empty($_POST[szSheng])){
		$where = $where. " and province = '".$_POST[szSheng]."' ";
		$smarty->assign("cpValues","<script>selectOption('".$_POST[szSheng]."')</script>");
	}
	if(isset($_POST[szShi]) && !empty($_POST[szShi])){
		$where = $where. " and city = '".$_POST[szShi]."' ";
	}
	if(isset($_POST[shopkey]) && !empty($_POST[shopkey])){
		$where = $where. " and (sj_name like '%".$_POST[shopkey]."%' or sj_desc like '%".$_POST[shopkey]."%' )";
		$smarty->assign("keyValues","<script>writeShopKeyValue('".($_POST[shopkey])."')</script>");
	}
}

$sjType = "1";
//类型
if(isset($_GET[type])&& !empty($_GET[type])){
	$sjType=$_GET[type];
	$where = $where."and sj_type=$sjType";
	//$smarty->assign("sj_typeByGet",$sjType);
}

$pagesize = 10;//一页显示多少条

//分页
$queryTotal = $db->query("select id from lm_sj" .$where);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//商家列表
$sjQuery = $db->query("select * from lm_sj ".$where." order by create_date desc limit $firstcount, $displaypg ");
$sjRow = array();
while($rowR = $db->fetch_array($sjQuery)){
	$sjRow[] = $rowR;
}
$smarty->assign("sjRow",$sjRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("procat.html");
?>
