<?php
//������ʾ
//��Ա�����޸�
if($_GET['error']=="MB-1"){
	$smarty->assign("errorInfoByMbInfo","��֤�����!");
}else if($_GET['error']=="MB-2"){
	$smarty->assign("errorInfoByMbInfo","�����������!");
}else{
	$smarty->assign("errorInfoByMbInfo","OK");
}


//��Ҫ����
if($_GET['error']=="HL-1"){
	$smarty->assign("errorInfoByHongLi","��֤�����!");
}else if($_GET['error']=="HL-2"){
	$smarty->assign("errorInfoByHongLi","�������˺�����������벻һ�»�ÿ���δ�ƿ�!");
}else if($_GET['error']=="HL-3"){
	$smarty->assign("errorInfoByHongLi","����������,ֻ��ʹ��500��1000�����!");
}else{
	$smarty->assign("errorInfoByHongLi","OK");
}

//��Ҫ����errorInfoByJiFen
if($_GET['error']=="JF-1"){
	$smarty->assign("errorInfoByJiFen","��֤�����!");
}else if($_GET['error']=="JF-2"){
	$smarty->assign("errorInfoByJiFen","�������˺�����������벻һ�»�ÿ���δ�ƿ�!");
}else{
	$smarty->assign("errorInfoByJiFen","OK");
}
//�ҵĻ���errorInfoByJiFen2HongLi
if($_GET['error']=="JF2HL-1"){
	$smarty->assign("errorInfoByJiFen2HongLi","�����������!");
}else if($_GET['error']=="JF2HL-2"){
	$smarty->assign("errorInfoByJiFen2HongLi","���ĺ���Ȩ������,�޷��һ�!");
}else{
	$smarty->assign("errorInfoByJiFen2HongLi","OK");
}

//����
if($_GET['error']=="TX-1"){
	$smarty->assign("errorInfoByTiXian","��֤�����!");
}else if($_GET['error']=="TX-2"){
	$smarty->assign("errorInfoByTiXian","����������������Ľ��С��40!");
}else if($_GET['error']=="TX-3"){
	$smarty->assign("errorInfoByTiXian","���Ľ���,��˶�!");
}else{
	$smarty->assign("errorInfoByTiXian","OK");
}

//ת��
if($_GET['error']=="ZZ-1"){
	$smarty->assign("errorInfoByZhuanZhang","�����������!");
}else if($_GET['error']=="TX-2"){
	$smarty->assign("errorInfoByZhuanZhang","���Ļ��ֲ���,��˶�!");
}else if($_GET['error']=="TX-3"){
	$smarty->assign("errorInfoByZhuanZhang","���ĺ�������,��˶�!");
}else if($_GET['error']=="TX-4"){
	$smarty->assign("errorInfoByZhuanZhang","�Է��û���������,��˶�!");
}else{
	$smarty->assign("errorInfoByZhuanZhang","OK");
}

//���ⷴ��
if($_GET['error']=="QA-1"){
	$smarty->assign("errorInfoByQA","��֤�����!");
}else{
	$smarty->assign("errorInfoByQA","OK");
}
//�������޸�
if($_GET['error']=="MP-1"){
	$smarty->assign("errorInfoByPassword","��֤�����!");
}else if($_GET['error']=="MP-2"){
	$smarty->assign("errorInfoByPassword","�����벻һ��!");
}else if($_GET['error']=="MP-3"){
	$smarty->assign("errorInfoByPassword","���������!");
}else if($_GET['error']=="MP-4"){
	$smarty->assign("errorInfoByPassword","�����������!");
}else if($_GET['error']=="MP-5"){
	$smarty->assign("errorInfoByPassword","�ܱ��𰸴���!");
}else{
	$smarty->assign("errorInfoByPassword","OK");
}

//�̼������޸�
if($_GET['error']=="SJ-1"){
	$smarty->assign("errorInfoBySjInfo","��֤�����!");
}else if($_GET['error']=="SJ-2"){
	$smarty->assign("errorInfoBySjInfo","�����������!");
}else{
	$smarty->assign("errorInfoBySjInfo","OK");
}



//�̼�����ƽ̨
if($_GET['error']=="AP-1"){
	$smarty->assign("errorInfoByAddProduct","��֤�����!");
}else if($_GET['error']=="AP-2"){
	$smarty->assign("errorInfoByAddProduct","ͼƬ�ϴ�ʧ��,�����ļ����ͺʹ�С!");
}else{
	$smarty->assign("errorInfoByAddProduct","OK");
}
?>
