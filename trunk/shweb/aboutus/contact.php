<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");


//��ϵ��Ϣ
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("contactInfo",$rowButtom);

//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; <font color='#FF3300'>��ϵ����</font>";
$smarty->assign("address",$address);

$smarty->display("aboutus/contact.html");
?>
