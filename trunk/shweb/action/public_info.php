<?php
//����
$smarty->assign("title","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾   ������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");
$smarty->assign("keywords","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾ ,�Ϻ��ǰ�,�ǰ�����Ϳװ,������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");
$smarty->assign("description","�Ϻ��ǰ���Ϣ�Ƽ����޹�˾ ,�Ϻ��ǰ�,�ǰ�����Ϳװ,������,������,������,��,����,������,������,������,��ʯ��,ǽ��,��ɰ����,�´���ʯ��,�·绯ʯ��,��Ӱ��,��ɰ,����Ϳװ,����ʩ��");

//��Ʒ����
$queryProdClassList = $db->query("select id,class_name from prod_class");
$rowProdClassList = array();
while($rowProdClass = $db->fetch_array($queryProdClassList)){
	$rowProdClassList[] = $rowProdClass;
}
$smarty->assign("prodClassList",$rowProdClassList);

//�ײ���Ϣ
$queryButtom = $db->query("select * from comm_info where info_type='ContactUs'");
$rowButtom = $db->fetch_array($queryButtom);
$smarty->assign("buttomInfo",$rowButtom);

//�ͻ���Ϣ
$query = $db->query("select id,remark from comm_info where info_type='Im_Info_Ms'");
$imList = array();
while($row = $db->fetch_array($query)){
	$imList[] = $row;
}
$smarty->assign("imList",$imList);
?>
