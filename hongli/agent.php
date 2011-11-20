<?php
if(isset($_GET['mode']) && !empty($_GET['mode']) && "applySjAgent"==$_GET['mode']){
	$URL= $_SERVER['REQUEST_URI'];
	setcookie("RequireUrl", $URL, time()+1800);

	require_once("action/checkLogin.php");
	require_once("action/smarty_index.php");
	require_once("action/mysql.class.php");
	require_once("action/public_info.php");
	$smarty->assign("AGENT_LI","class='beijingwu'");
	$smarty->assign("AGENT_A"," flwindex_menu_zhuyao_sekuai");
	$smarty->assign("AGENT_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');

	$smarty->assign("scriptShowAgentSjApplyDiv","<script>showAgentDiv(7,1)</script>");

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

	if(isset($_GET[error])&&$_GET[error]=="APM-1"){
		$smarty->assign("errorInfoByAgentMc","验证码错误!");
	}else if(isset($_GET[error])&&$_GET[error]=="APM-2"){
		$smarty->assign("errorInfoByAgentMc","文件上传失败!");
	}else{
		$smarty->assign("errorInfoByAgentMc","OK");
	}


	$smarty->display("agent.html");
}else if(isset($_GET['mode']) && !empty($_GET['mode']) && "applyAgent"==$_GET['mode']){
	$URL= $_SERVER['REQUEST_URI'];
	setcookie("RequireUrl", $URL, time()+1800);

	require_once("action/checkLogin.php");
	require_once("action/smarty_index.php");
	require_once("action/mysql.class.php");
	require_once("action/public_info.php");
	$smarty->assign("AGENT_LI","class='beijingwu'");
	$smarty->assign("AGENT_A"," flwindex_menu_zhuyao_sekuai");
	$smarty->assign("AGENT_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');

	$smarty->assign("scriptShowAgentApplyDiv","<script>showAgentDiv(7,2)</script>");

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

	if(isset($_GET[error])&&$_GET[error]=="APA-1"){
		$smarty->assign("errorInfoByAgentAgent","验证码错误!");
	}else{
		$smarty->assign("errorInfoByAgentAgent","OK");
	}


	$smarty->display("agent.html");
}else{
	require_once("action/smarty_index.php");
	require_once("action/mysql.class.php");
	require_once("action/public_info.php");
	$smarty->assign("AGENT_LI","class='beijingwu'");
	$smarty->assign("AGENT_A"," flwindex_menu_zhuyao_sekuai");
	$smarty->assign("AGENT_A_CSS",'style="color: rgb(0, 0, 0); font-family: 宋体;"');

	$query = $db->query("select content from lm_comm_code where type_name='AboutSjAgent'");
	$info = $db->fetch_array($query);
	$smarty->assign("AboutSjAgent",html_entity_decode($info[content]));

	$query = $db->query("select content from lm_comm_code where type_name='AboutAgentAgent'");
	$info = $db->fetch_array($query);
	$smarty->assign("AboutAgentAgent",html_entity_decode($info[content]));

	$query = $db->query("select content from lm_comm_code where type_name='AboutAgentShuoMing'");
	$info = $db->fetch_array($query);
	$smarty->assign("AboutAgentShuoMing",html_entity_decode($info[content]));

	$query = $db->query("select content from lm_comm_code where type_name='AboutAgentYouShi'");
	$info = $db->fetch_array($query);
	$smarty->assign("AboutAgentYouShi",html_entity_decode($info[content]));

	$smarty->display("agent.html");
}
?>
