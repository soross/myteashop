<?php
//�˵�
$menuRow = getRows(" menu m where m.`show`='1'",$db," id,pid,url,menu_name_".$currlang." as menu_name " );
$smarty->assign("menuRows",$menuRow);
//print_r($menuRow);

//��ȡ����ѧԺ���Ӳ˵�
$collegeRow = getRows(" college_type t where t.pid='0'",$db," id,link_url,college_title_".$currlang." as menu_name " );
$smarty->assign("collegeRows",$collegeRow);

//��ȡ����ѧԺ��id��
$collegeIdInfo = getInfo("comm_code where type_name='College_Menu_ID'",$db,"type_code");
$smarty->assign("collegeID",$collegeIdInfo[type_code]);



if($currlang=="zh_cn"){
	$clang = '����';
}else{
	$clang = 'English';
}
$smarty->assign("clang",$clang);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
