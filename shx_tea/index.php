<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//�������Ŷ�̬
$newsRows = getRows("news order by create_date desc limit 0,5",$db,"id,title,create_date");
$smarty->assign("newsRows",$newsRows);

//���Ļ�
$newsTypeTRows = getRows("news where type_id='3' order by create_date desc limit 0,5",$db,"id,title");
$smarty->assign("newsTypeTRows",$newsTypeTRows);

//Ʒ��֮��
$newsTypeFRows = getRows("news where type_id='4' order by create_date desc limit 0,5",$db,"id,title");
$smarty->assign("newsTypeFRows",$newsTypeFRows);

//��¥����->����Ʒ��
$prodRows = getRows("prod order by create_date desc limit 0,5",$db,"id,prod_pic ");
$smarty->assign("prodRows",$prodRows);

//��¥Ӱ��->�����ػ�
$cheapRows = getRows("prod where state='1' order by create_date desc limit 0,2",$db,"id,prod_name,prod_pic,cheap_desc ");
$smarty->assign("cheapRows",$cheapRows);

//����ָ��
$guideInfo = getInfo("comm_code where type_name='Guide_Left'",$db,"type_value");
$smarty->assign("guideIndexInfo",html_entity_decode($guideInfo[type_value]));

//��ҳ���
$aboutUsInfo = getInfo("comm_code where type_name='AboutUs_Index'",$db,"type_value,type_code");
$smarty->assign("aboutUsInfo_Text",html_entity_decode($aboutUsInfo[type_value]));
$smarty->assign("aboutUsInfo_Image",$aboutUsInfo[type_code]);

$smarty->display("index.htm");
?>
