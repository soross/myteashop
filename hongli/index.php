<?php
require_once("action/checkLogin.php");
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");
require_once("action/public_info.php");

//��������
$smarty->assign("INDEX_LI","class='beijingwu'");
$smarty->assign("INDEX_A"," flwindex_menu_zhuyao_sekuai");
$smarty->assign("INDEX_A_CSS",'style="color: rgb(0, 0, 0); font-family: ����;"');

//�ҵ�����
$mbInfoQuery = $db->query("select * from lm_member where id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mbInfo = $db->fetch_array($mbInfoQuery);
$smarty->assign("mbInfo",$mbInfo);
$smarty->assign("mbAddressPC","<script>selectOption('".$mbInfo[province]."');selectOptionByAddress('".$mbInfo[city]."','szShi')</script>");

//չʾ��
if(isset($_GET['divNo']) && isset($_GET['flag'])){
	$smarty->assign("js","<script>menuclick(19,".$_GET['divNo'].",'".$_GET['flag']."');</script>");
}

//�ҵĻ���
$jifenQuery = $db->query("select * from lm_mb_limit where mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$jfTotal = 0;
$mb_limit =  $db->fetch_array($jifenQuery);
$smarty->assign("jfTotal",$mb_limit[jifen]);
$smarty->assign("jfTotalBasic",floor($mb_limit[jifen]/500));

//�ҵĺ���
$smarty->assign("hlhongli",$mb_limit[hongli]);//����Ȩ��
$smarty->assign("notMoney",round($mb_limit[not_money],2)+round($mb_limit[money],2));//�ѷֺ���
$smarty->assign("money",round($mb_limit[money],2));//���÷ֺ�

//��ǰ����
$lmQuery = $db->query("select sale_money,exchange from lm_limit where id='1'");
$lm_limit =  $db->fetch_array($lmQuery);
$hlDay = 0;
if(round(((($lm_limit[sale_money]+$lm_limit[exchange])*0.05)/$lm_limit[hongli]),1) != "" ){
	$hlDay = round(((($lm_limit[sale_money]+$lm_limit[exchange])*0.05)/$lm_limit[hongli]),1);
}
$smarty->assign("hlDay",$hlDay);//�������


//�ҵĶ���
$orderQuery = $db->query("select * from lm_order where mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by create_date desc");
$orderRow = array();
while($rowOrder = $db->fetch_array($orderQuery)){
	$orderRow[] = $rowOrder;
}
$smarty->assign("orderRow",$orderRow);

//�ҵ�����
$smarty->assign("getMoneyOK",($mb_limit[money]*0.8)+($mb_limit[sale_money]*0.8)+$mb_limit[exchange]);//�ֺܷ�


//�ҵ��ղ�
$mcScQuery = $db->query("select s.*,m.mc_type,m.mc_count,m.state,m.mc_price,m.mc_price_type from lm_mb_sc s,lm_sj_mc m where m.id=s.mc_id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mcScRow = array();
while($rowMcSc = $db->fetch_array($mcScQuery)){
	$mcScRow[] = $rowMcSc;
}
$smarty->assign("mcScRow",$mcScRow);


//����֪ͨ
$productQuery = $db->query("select * from lm_sj_mc where mc_type='1' and state='0' order by create_date desc");
$productRow = array();
while($rowproduct = $db->fetch_array($productQuery)){
	$productRow[] = $rowproduct;
}
$smarty->assign("productRow",$productRow);


//�̼�����
$sjInfoQuery = $db->query("select s.*,t.`name` from lm_sj s,lm_sj_type t where s.sj_type=t.id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$sjInfo = $db->fetch_array($sjInfoQuery);
$smarty->assign("sjInfo",$sjInfo);
$smarty->assign("sjAddressCity","<script>selectOptionByAddress('".$sjInfo[city]."','szShi2')</script>");

//�̼ҷ���
$sjTypeQuery = $db->query("select * from lm_sj_type");
$sjTypeRow = array();
while($rowsjType = $db->fetch_array($sjTypeQuery)){
	$sjTypeRow[] = $rowsjType;
	if($rowsjType[id]==$sjType){
		$smarty->assign("sjTypeName",$rowsjType[name]);
	}
}
$smarty->assign("sjTypeRow",$sjTypeRow);


//�̼Ҳ�Ʒ����
$mcInfoQuery = $db->query("select m.* from lm_sj s,lm_sj_mc m where s.id=m.sj_id and s.mb_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$mcRow = array();
while($rowMc = $db->fetch_array($mcQuery)){
	$mcRow[] = $rowMc;
}
$smarty->assign("mcRow",$mcRow);





//********************************************************************

//�ҵ�δ����̼�
$unAuthQuery = $db->query("select s.*,m.mb_name from lm_sj s,lm_member m  where s.mb_id=m.id and s.state='-1' and s.agent_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$unAuthRow = array();
while($rowunAuth = $db->fetch_array($unAuthQuery)){
	$unAuthRow[] = $rowunAuth;
}
$smarty->assign("unAuthRow",$unAuthRow);

//�ҵ��Ѿ�����̼�
$authQuery = $db->query("select s.*,m.mb_name from lm_sj s,lm_member m  where s.mb_id=m.id and (s.state='-2' or s.state='0') and s.agent_id='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."'");
$authRow = array();
while($rowauth = $db->fetch_array($authQuery)){
	$authRow[] = $rowauth;
}
$smarty->assign("authRow",$authRow);

//����˿�
$customerQuery = $db->query("SELECT * from lm_mb_sc s where s.sj_mb_id ='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by s.create_date desc");
$customerRow = array();
while($rowcustomer = $db->fetch_array($customerQuery)){
	$customerRow[] = $rowcustomer;
}
$smarty->assign("customerRow",$customerRow);


//������Ա
$memberQuery = $db->query("SELECT * from lm_order o where o.sj_mb_id ='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by o.create_date desc");
$memberRow = array();
while($rowmember = $db->fetch_array($memberQuery)){
	$memberRow[] = $rowmember;
}
$smarty->assign("memberRow",$memberRow);

//�ҵĻ�Ա
$mymemberQuery = $db->query("SELECT * from lm_member m where m.recommendID='".$_SESSION["WEB_USER_LOGIN_UID_SESSION"]."' order by m.create_date desc");
$mymemberRow = array();
while($rowmymember = $db->fetch_array($mymemberQuery)){
	$mymemberRow[] = $rowmymember;
}
$smarty->assign("myMemberRow",$mymemberRow);


require_once("action/indexErrorInfo.php");
$smarty->display("index.html");
?>
