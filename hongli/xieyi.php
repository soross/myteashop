<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",html_entity_decode($buttomInfo[content]));


$navQuery=$db->query("select content from lm_comm_code where type_name='ButtomNav'");
$navInfo = $db->fetch_array($navQuery);
$smarty->assign("buttomNavInfo",html_entity_decode($navInfo[content]));


$userAgreementQuery=$db->query("select content from lm_comm_code where type_name='UserAgreement'");
$userAgreementInfo = $db->fetch_array($userAgreementQuery);
$smarty->assign("userAgreementInfo",html_entity_decode($userAgreementInfo[content]));


$smarty->display("xieyi.html");
?>
