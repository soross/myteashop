<?php
if(!isset($_SESSION)){
	session_start();
}
if((isset ($_SESSION['WEB_USER_LOGIN_UID_SESSION']) && isset($_SESSION['WEB_USER_LOGIN_UID_TYPE'])
	&& isset ($_SESSION['WEB_USER_LOGIN_SESSION']) && isset ($_SESSION['WEB_USER_LOGIN_ONTIME_SESSION']))){

	$mbInfoQuery = $db->query("select `mb_name`,`hongli`,`jifen` from `lm_member` m,`lm_mb_limit` l where m.id=l.mb_id and m.id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
	$mbTopInfo = $db->fetch_array($mbInfoQuery);

	$loginText ='<div class="flwindex_juzhong_left">
				���ã���ӭ����������&nbsp;&nbsp;
				<a href="index.php">'.$mbTopInfo[mb_name].'</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				���֣�<span style="color:red;">'.$mbTopInfo[jifen].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				�ֺ�Ȩ����<span style="color:red;">'.	$mbTopInfo[hongli].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="#" onclick=javascript:if(confirm("�Ƿ�ȷ���˳�!"))location.href="login.php?task=logout";>�˳�</a>
			  </div>';

}else{
	if(isset($_COOKIE['WEB_USER_LOGIN_UID_COOKIE']) && !empty($_COOKIE['WEB_USER_LOGIN_UID_COOKIE'])
		&& isset($_COOKIE['WEB_USER_LOGIN_UID_TYPE_COOKIE']) && !empty($_COOKIE['WEB_USER_LOGIN_UID_TYPE_COOKIE'])
		&& isset($_COOKIE['WEB_USER_LOGIN_COOKIE']) && !empty($_COOKIE['WEB_USER_LOGIN_COOKIE'])
		&& isset($_COOKIE['WEB_USER_LOGIN_ONTIME_COOKIE']) && !empty($_COOKIE['WEB_USER_LOGIN_ONTIME_COOKIE'])){

		$_SESSION['WEB_USER_LOGIN_UID_SESSION'] = $_COOKIE['WEB_USER_LOGIN_UID_COOKIE'];
		$_SESSION['WEB_USER_LOGIN_UID_TYPE'] = $_COOKIE['WEB_USER_LOGIN_UID_TYPE_COOKIE'];
		$_SESSION['WEB_USER_LOGIN_SESSION'] = $_COOKIE['WEB_USER_LOGIN_COOKIE'];
		$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = $_COOKIE['WEB_USER_LOGIN_ONTIME_COOKIE'];

		$mbInfoQuery = $db->query("select `mb_name`,`hongli`,`jifen` from `lm_member` m,`lm_mb_limit` l where m.id=l.mb_id and m.id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
		$mbTopInfo = $db->fetch_array($mbInfoQuery);

		$loginText ='<div class="flwindex_juzhong_left">
				���ã���ӭ����������&nbsp;&nbsp;
				<a href="index.php">'.$mbTopInfo[mb_name].'</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				���֣�<span style="color:red;">'.$mbTopInfo[jifen].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				�ֺ�Ȩ����<span style="color:red;">'.	$mbTopInfo[hongli].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="#" onclick=javascript:if(confirm("�Ƿ�ȷ���˳�!"))location.href="login.php?task=logout";>�˳�</a>
			  </div>';

	}else{
		$loginText ='<div class="flwindex_juzhong_left">
						���ã���ӭ����������&nbsp;&nbsp;
						<a href="login.php">�����</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="reg.php">���ע��</a>
				</div>';
	}
}
$smarty->assign("isLoginText",$loginText);

/**
$lmInfoQuery = $db->query("select * from lm_limit where id='1'");
$lmTopInfo = $db->fetch_array($lmInfoQuery);
$lmInfo="<li>�����ܺ���Ȩ����".$lmTopInfo[hongli]."</li>
		 <li>�����ܺ���Ȩ����".$lmTopInfo[dayhongli]."</li>
 		 <li>ÿ�˿ɷֺ�����".round(((($lmTopInfo[sale_money]+$lmTopInfo[exchange])*0.05)/$lmTopInfo[hongli]),1)."</li>";
$smarty->assign("lmInfo",$lmInfo);
**/


//�ײ�copy��Ϣ
$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",html_entity_decode($buttomInfo[content]));

//�ײ�����
$navQuery=$db->query("select content from lm_comm_code where type_name='ButtomNav'");
$navInfo = $db->fetch_array($navQuery);
$smarty->assign("buttomNavInfo",html_entity_decode($navInfo[content]));

//�ײ�AD
$buttomAdQuery=$db->query("select type_code,type_url from lm_comm_code where type_name='ADCode' and remark='ButtomADCode'");
$buttomAdInfo = $db->fetch_array($buttomAdQuery);
$smarty->assign("ButtomADCode",$buttomAdInfo);

//���AD
$rightAdQuery=$db->query("select type_code,type_url from lm_comm_code where type_name='ADCode' and remark='RightADCode'");
$rightAdRow = array();
while($rowrightAd = $db->fetch_array($rightAdQuery)){
	$rightAdRow[] = $rowrightAd;
}
$smarty->assign("rightAD",$rightAdRow);

//�ұ�AD
$LeftAdQuery=$db->query("select type_code,type_url from lm_comm_code where type_name='ADCode' and remark='LeftADCode'");
$LeftAdRow = array();
while($rowLeftAd = $db->fetch_array($LeftAdQuery)){
	$LeftAdRow[] = $rowLeftAd;
}
$smarty->assign("leftAD",$LeftAdRow);



//���
$aboutMeQuery=$db->query("select content from lm_comm_code where type_name='AboutMe'");
$aboutMeInfo = $db->fetch_array($aboutMeQuery);
$smarty->assign("aboutMeInfo",html_entity_decode($aboutMeInfo[content]));

//�����б�
$newsTipQuery = $db->query("select * from lm_news where type<>-1 order by create_date desc limit 0, 10 ");
$newsTipRow = array();
while($rownewsTip = $db->fetch_array($newsTipQuery)){
	$newsTipRow[] = $rownewsTip;
}
$smarty->assign("newsTipRow",$newsTipRow);


//���˶�̬
$newsDTQuery = $db->query("select * from lm_news where type=2 order by create_date desc limit 0, 3 ");
$newsDTRow = array();
while($rownewsDT = $db->fetch_array($newsDTQuery)){
	$newsDTRow[] = $rownewsDT;
}
$smarty->assign("newsDTRow",$newsDTRow);

//���˹���
$newsGGQuery = $db->query("select * from lm_news where type=1 order by create_date desc limit 0, 3 ");
$newsGGRow = array();
while($rownewsGG = $db->fetch_array($newsGGQuery)){
	$newsGGRow[] = $rownewsGG;
}
$smarty->assign("newsGGRow",$newsGGRow);

//qq����
$qqQuery = $db->query("select * from lm_comm_code where type_name='QQService'");
$qqRow = array();
while($rowqq = $db->fetch_array($qqQuery)){
	$qqRow[] = $rowqq;
}
$smarty->assign("qq",$qqRow);

?>
