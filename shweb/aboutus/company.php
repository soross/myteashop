<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

//�����Ϣ
$query = $db->query("select remark from comm_info where info_type='Company'");
$row = $db->fetch_array($query);
$smarty->assign("CompanyInfo",$row);

//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; <font color='#FF3300'>��˾���</font>";
$smarty->assign("address",$address);
$smarty->display("aboutus/company.html");
?>
