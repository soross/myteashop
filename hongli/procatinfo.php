<?php
if(!isset($_GET[id])||empty($_GET[id])){
	echo "<script>window.history.back();</script>";
	exit;
}else{
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
	}
	$smarty->assign("sjTypeRow",$sjTypeRow);

	//商家资料
	$sjInfoQuery = $db->query("select s.*,t.`name` from lm_sj s,lm_sj_type t where s.sj_type=t.id and s.id='".$_GET[id]."'");
	$sjInfo = $db->fetch_array($sjInfoQuery);
	$smarty->assign("sjInfo",$sjInfo);

	//商家产品资料
	$sjProductListQuery = $db->query("select * from lm_sj_mc where state='0' and mc_type='0' and sj_id='".$_GET[id]."' order by create_date desc");
	$sjProduct = array();
	while($rowsjProduct =  $db->fetch_array($sjProductListQuery)){
		$sjProduct[] = $rowsjProduct;
	}
	$smarty->assign("sjProduct",$sjProduct);

	//换购产品资料
	$sjMcListQuery = $db->query("select * from lm_sj_mc where state='0' and mc_type='1' and sj_id='".$_GET[id]."' order by create_date desc");
	$sjMc = array();
	while($rowsjMc =  $db->fetch_array($sjMcListQuery)){
		$sjMc[] = $rowsjMc;
	}
	$smarty->assign("sjMc",$sjMc);



	$smarty->display("procatinfo.html");
}
?>
