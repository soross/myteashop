<?php
if(!isset($_GET[mcid])||empty($_GET[mcid])){
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

	//产品详细资料
	$mcQuery = $db->query("select m.*,s.`mb_id`,s.`agent_id`,s.`sj_name`,s.`address`,s.`telephone`,s.`fax`,s.`phone`,s.`qq`,s.`link_man`,s.`province`,s.`city`,s.`email`,".
		"t.`name` from lm_sj s,lm_sj_type t,lm_sj_mc m where s.sj_type=t.id AND s.id=m.sj_id AND m.id='".$_GET[mcid]."'");
	$mcInfo = $db->fetch_array($mcQuery);
	$smarty->assign("mcInfo",$mcInfo);

	$URL= $_SERVER['REQUEST_URI'];
	setcookie("RequireUrl", $URL, time()+1800);


	$smarty->display("mcinfo.html");
}
?>
