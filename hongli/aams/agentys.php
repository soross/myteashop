<?php
require_once("action/checkAamsLogin.php");
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
$query = $db->query("select content from lm_comm_code where type_name='AboutAgentYouShi'");
$info = $db->fetch_array($query);
$smarty->assign("AboutSjAgent",html_entity_decode($info[content]));

$smarty->display("aams/agentys.html");
?>
