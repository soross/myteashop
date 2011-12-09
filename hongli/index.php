<?php
require_once("action/checkLogin.php");
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/public_info.php");

//顶部导航
$smarty->assign("INDEX_LI","class='beijingwu'");
$smarty->assign("INDEX_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("INDEX_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');

//我的资料
$mbInfoQuery = $db->query("select * from lm_member where id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mbInfo = $db->fetch_array($mbInfoQuery);
$smarty->assign("mbInfo",$mbInfo);
$smarty->assign("mbAddressPC","<script>selectOption('".$mbInfo[province]."','szSheng');selectOptionByAddress('".$mbInfo[city]."','szShi')</script>");

//展示层
if(isset($_GET['divNo']) && isset($_GET['flag'])){
	$smarty->assign("js","<script>menuclick(19,".$_GET['divNo'].",'".$_GET['flag']."');</script>");
}

//我的积分
$jifenQuery = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$jfTotal = 0;
$mb_limit =  $db->fetch_array($jifenQuery);
$smarty->assign("jfTotal",$mb_limit[jifen]);
$smarty->assign("jfTotalBasic",floor($mb_limit[jifen]/500));

//我的红利
$smarty->assign("hlhongli",$mb_limit[hongli]);//红利权数
$smarty->assign("notMoney",round($mb_limit[not_money],2));//已分红利
$smarty->assign("money",round($mb_limit[money],2));//可用分红
$smarty->assign("getMoneyBuyOK",round(($mb_limit[money]*0.85),2));//可购红利

//当前红利

$lmQuery = $db->query("select * from lm_limit where id='1'");
$lm_limit =  $db->fetch_array($lmQuery);
$hlDay = 0;
if(round(((($lm_limit[sale_money]+$lm_limit[exchange])*0.05)/$lm_limit[dayhongli]),2) != "" ){
	$hlDay = round(((($lm_limit[sale_money]+$lm_limit[exchange])*0.05)/$lm_limit[dayhongli]),2);
}
/**
$lmLimitInfoQuery = $db->query("select * from lm_limit where id='1'");
$lmLimitTopInfo = $db->fetch_array($lmLimitInfoQuery);
$hlDay=round(((($lmLimitTopInfo[sale_money]+$lmLimitTopInfo[exchange])*0.05)/$lmLimitTopInfo[hongli]),1);
print_r($lmLimitTopInfo);**/
$smarty->assign("hlDay",$hlDay);//今天红利

//我的订单
$orderQuery = $db->query("SELECT
sj.address,
sj.province,
sj.city,
mb.mb_name,
sj.link_man,
sj.telephone,
o.id,
o.order_id,
o.mb_id,
o.mc_name,
o.mc_id,
o.sj_name,
o.sj_mb_id,
o.sj_id,
o.create_date,
o.price,
o.price_type,
o.state,
o.`mode`
FROM
lm_order AS o
INNER JOIN lm_sj AS sj ON o.sj_id = sj.id
INNER JOIN lm_member AS mb ON o.sj_mb_id = mb.id where o.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by o.create_date desc");
$orderRow = array();
while($rowOrder = $db->fetch_array($orderQuery)){
	$orderRow[] = $rowOrder;
}
$smarty->assign("orderRow",$orderRow);

//我的提现
$smarty->assign("getMoneyOK",round(($mb_limit[money]*0.8),2));//可用分红
$smarty->assign("getMoneyZZOK",round(($mb_limit[money]),2));//可用转账
$smarty->assign("getSaleMoneyOK",round(($mb_limit[sale_money]*0.85),2));//销售额
$smarty->assign("getExchangeOK",round(($mb_limit[exchange]*0.95),2));//换购额


//我的收藏
$mcScQuery = $db->query("select s.*,m.mc_type,m.mc_count,m.state,m.mc_price,m.mc_price_type from lm_mb_sc s,lm_sj_mc m where m.id=s.mc_id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mcScRow = array();
while($rowMcSc = $db->fetch_array($mcScQuery)){
	$mcScRow[] = $rowMcSc;
}
$smarty->assign("mcScRow",$mcScRow);


//换购通知
$productQuery = $db->query("select * from lm_sj_mc where mc_type='1' and state='0' order by create_date desc limit 0,10");
$productRow = array();
while($rowproduct = $db->fetch_array($productQuery)){
	$productRow[] = $rowproduct;
}
$smarty->assign("productRow",$productRow);


//商家资料
$sjInfoQuery = $db->query("select s.*,t.`name`,mb.mb_name from lm_sj s,lm_sj_type t,lm_member mb where s.sj_type=t.id and mb.id=s.agent_id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$sjInfo = $db->fetch_array($sjInfoQuery);
$smarty->assign("sjInfo",$sjInfo);
$smarty->assign("sjAddressCity","<script>selectOptionByAddress('".$sjInfo[city]."','szShi2');</script>");

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


//商家产品资料
$mcInfoQuery = $db->query("select m.* from lm_sj s,lm_sj_mc m where s.id=m.sj_id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mcRow = array();
while($rowMc = $db->fetch_array($mcQuery)){
	$mcRow[] = $rowMc;
}
$smarty->assign("mcRow",$mcRow);



//售出产品
//$orderSaleQuery = $db->query("select sm.*,t.cnt,t.mc_id from lm_sj_mc sm,(select mc_id,count(*) as cnt from lm_order where sj_mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' group by mc_id) t where sm.id=t.mc_id and id in (select mc_id from lm_order where sj_mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."')");
$orderSaleQuery = $db->query("SELECT sm.mc_name,sm.mc_pic,sm.mc_price,sm.mc_price_type,sm.mc_type,o.mc_id,o.state,o.id,
mb.mb_name,mb.realname,mb.province,mb.city,mb.address,mb.phone FROM
lm_sj_mc AS sm  INNER JOIN lm_order AS o ON sm.id = o.mc_id INNER JOIN lm_member AS mb ON o.mb_id = mb.id
ORDER BY o.create_date DESC LIMIT 0, 20");
$orderSaleRow = array();
while($rowOrderSale = $db->fetch_array($orderSaleQuery)){
	$orderSaleRow[] = $rowOrderSale;
}
$smarty->assign("orderSaleRow",$orderSaleRow);




//********************************************************************

//我的未审核商家
$unAuthQuery = $db->query("select s.*,m.mb_name from lm_sj s,lm_member m  where s.mb_id=m.id and s.state=-1 and s.agent_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$unAuthRow = array();
while($rowunAuth = $db->fetch_array($unAuthQuery)){
	$unAuthRow[] = $rowunAuth;
}
$smarty->assign("unAuthRow",$unAuthRow);

//我的已经审核商家
$authQuery = $db->query("select s.*,m.mb_name from lm_sj s,lm_member m  where s.mb_id=m.id and s.state='0' and s.agent_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$authRow = array();
while($rowauth = $db->fetch_array($authQuery)){
	$authRow[] = $rowauth;
}
$smarty->assign("authRow",$authRow);

//意向顾客
$customerQuery = $db->query("SELECT * from lm_mb_sc s where s.sj_mb_id ='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by s.create_date desc");
$customerRow = array();
while($rowcustomer = $db->fetch_array($customerQuery)){
	$customerRow[] = $rowcustomer;
}
$smarty->assign("customerRow",$customerRow);


//换购会员
$memberQuery = $db->query("SELECT * from lm_order o where o.sj_mb_id ='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by o.create_date desc");
$memberRow = array();
while($rowmember = $db->fetch_array($memberQuery)){
	$memberRow[] = $rowmember;
}
$smarty->assign("memberRow",$memberRow);

//我的会员
$mymemberQuery = $db->query("SELECT * from lm_member m where m.recommendID='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by m.create_date desc");
$mymemberRow = array();
while($rowmymember = $db->fetch_array($mymemberQuery)){
	$mymemberRow[] = $rowmymember;
}
$smarty->assign("myMemberRow",$mymemberRow);


require_once("action/indexErrorInfo.php");
$smarty->display("index.html");
?>
