<?php
//��ϵ����
$queryContactInfo = $db->query("select * from comm_info where info_type='ContactInfo'");
$rowContactInfo = $db->fetch_array($queryContactInfo);
$smarty->assign("contactInfo",$rowContactInfo[info_value]);

//IM��Ϣ
$query = $db->query("select id,info_value from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);
?>
