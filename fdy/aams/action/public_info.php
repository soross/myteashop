<?php
session_start();
if(isset ($_SESSION['WEB_USER_LOGIN_UID_SESSION']) && isset($_SESSION['WEB_USER_LOGIN_UID_TYPE'])
	&& isset ($_SESSION['WEB_USER_LOGIN_SESSION']) && isset ($_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'])){

	$mbInfoQuery = $db->query("select `mb_name`,`hongli`,`jifen`,`money` from `lm_member` m,`lm_mb_limit` l where m.id=l.mb_id and m.id='".$_SESSION['WEB_USER_LOGIN_UID_SESSION']."'");
	$mbTopInfo = $db->fetch_array($mbInfoQuery);

	$loginText ='<div class="flwindex_juzhong_left">
				���ã���ӭ����������&nbsp;&nbsp;
				<a href="index.php">'.$mbTopInfo[mb_name].'</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				���֣�<span style="color:red;">'.$mbTopInfo[jifen].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				������<span style="color:red;">'.	$mbTopInfo[hongli].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;
				��<span style="color:red;">'.$mbTopInfo[money].'</span>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.php">�˳�</a>
			  </div>';

}else{
	$loginText ='<div class="flwindex_juzhong_left">
					���ã���ӭ����������&nbsp;&nbsp;
					<a href="login.php">�����</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="reg.php">���ע��</a>
			</div>';
}
$smarty->assign("isLoginText",$loginText);

//�ײ�copy��Ϣ
$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",$buttomInfo[content]);

//�ײ�����
$navQuery=$db->query("select content from lm_comm_code where type_name='ButtomNav'");
$navInfo = $db->fetch_array($navQuery);
$smarty->assign("buttomNavInfo",$navInfo[content]);

//���
$aboutMeQuery=$db->query("select content from lm_comm_code where type_name='AboutMe'");
$aboutMeInfo = $db->fetch_array($aboutMeQuery);
$smarty->assign("aboutMeInfo",$aboutMeInfo[content]);


//�����б�
$newsTipQuery = $db->query("select * from lm_news where type<>-1 order by create_date desc limit 0, 10 ");
$newsTipRow = array();
while($rownewsTip = $db->fetch_array($newsTipQuery)){
	$newsTipRow[] = $rownewsTip;
}
$smarty->assign("newsTipRow",$newsTipRow);


//���˶�̬
$newsDTQuery = $db->query("select * from lm_news where type=2 order by create_date desc limit 0, 5 ");
$newsDTRow = array();
while($rownewsDT = $db->fetch_array($newsDTQuery)){
	$newsDTRow[] = $rownewsDT;
}
$smarty->assign("newsDTRow",$newsDTRow);

//���˹���
$newsGGQuery = $db->query("select * from lm_news where type=1 order by create_date desc limit 0, 5 ");
$newsGGRow = array();
while($rownewsGG = $db->fetch_array($newsGGQuery)){
	$newsGGRow[] = $rownewsGG;
}
$smarty->assign("newsGGRow",$newsGGRow);

?>
