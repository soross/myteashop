<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

//��ǰλ��
$address = "�����ڵ�λ�ã��� ҳ &gt; <font color='#FF3300'>��Ϣ����</font>";
$smarty->assign("address",$address);

$smarty->display("aboutus/message.html");
?>
