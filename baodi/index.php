<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//����
$newsRows = getRows("news where lang='$currlang' and type_id in('6','7') order by create_date desc limit 0,4" , $db);
$smarty->assign("newRows",$newsRows);

//ר��
$comparyRows = getRows("news where lang='$currlang' and type_id='69' order by create_date desc limit 0,3" , $db);
$smarty->assign("blRows",$comparyRows);

//���
$adRows = getRows("comm_code where lang='$currlang' and type_name='Index_AD'",$db);
$smarty->assign("adRows",$adRows);

$smarty->display("index.html");
?>
