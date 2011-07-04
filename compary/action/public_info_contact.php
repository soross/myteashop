<?php
//联系我们
$queryContactInfo = $db->query("select * from comm_info where info_type='ContactInfo'");
$rowContactInfo = $db->fetch_array($queryContactInfo);
$smarty->assign("contactInfo",$rowContactInfo[info_value]);
?>
