<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
require_once("../action/public.fun.class.php");

//��ҳ��˾����Ҫ��Ϣ�޸�
if(isset($_POST[task]) && "updateAboutIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='About' ");
	echo "<script>alert('��ҳ��˾����Ҫ��Ϣ�޸ĳɹ�!');location.href='../aboutme.php';</script>";

//������˾�����ϸ������Ŀ
}else if(isset($_POST[task]) && "addAbout"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('������˾�����ϸ������Ŀ�ɹ�!');location.href='../aboutme.php';</script>";



//ɾ����˾�����Ŀ��Ϣ
}else if(isset($_GET[task]) && "deleteAbout"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[aboutid]' ");
	echo "<script>alert('��˾�����Ŀ��Ϣɾ���ɹ�?');location.href='../aboutme.php';</script>";




//��ҳ���Ƽ�Ҫ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateSupIndex"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[contentIndex])."' where comm_code='Superiority' ");
	echo "<script>alert('��ҳ���Ƽ�Ҫ��Ϣ�޸ĳɹ�!');location.href='../sup.php';</script>";

//������˾�����ϸ������Ŀ
}else if(isset($_POST[task]) && "addSup"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('����������ϸ������Ŀ�ɹ�!');location.href='../sup.php';</script>";

//��˾�����Ŀ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateSup"==$_POST[task]){
	$db->query("update comm_code set comm_type='$_POST[title]',comm_value='".replace($_POST['content'.$_POST[supid]])."' where id='$_POST[supid]' ");
	echo "<script>alert('������Ŀ��Ϣ�޸ĳɹ�!');location.href='../sup.php';</script>";

//ɾ����˾�����Ŀ��Ϣ
}else if(isset($_GET[task]) && "deleteSup"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[supid]' ");
	echo "<script>alert('������Ŀ��Ϣɾ���ɹ�?');location.href='../sup.php';</script>";


//������ϵ��ʽ��Ŀ
}else if(isset($_POST[task]) && "addContact"==$_POST[task]){
	$db->query("insert into comm_code(comm_type,comm_value,fkid) " .
			"values('$_POST[title]', '".replace($_POST[contentAdd])."','$_POST[fkid]') ");
	echo "<script>alert('������ϵ��ʽ��Ŀ�ɹ�!');location.href='../contactus.php';</script>";


//�����������
}else if(isset($_POST[task]) && "AddPartner"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('picture')){
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("insert into comm_code(comm_type,comm_value,comm_code,remark) " .
			"values('PartnerLogo','$_POST[url]','$filename','$_POST[name]') ");
		echo "<script>alert('������������ɹ�!');location.href='../partnerlogo.php';</script>";
	}else{
		echo "<script>alert('�����������ʧ�ܡ������ϴ����ļ��Ƿ����Ҫ��!');location.href='../partnerlogo.php';</script>";
	}
}
//�޸ĺ������
else if(isset($_POST[task]) && "updatePartner"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/partner/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('path')){
		$query = $db->query("select comm_code from comm_code where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		$info= $db->fetch_array($query);
		$filename = "images/partner/".$up->getNewFileName();
		$db->query("update comm_code set comm_code='$filename',comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		if(file_exists("../../".$info[comm_code]))
		unlink("../../".$info[comm_code]);
  		echo "<script>alert('��������޸ĳɹ�!');location.href='../partnerlogo.php';</script>";
	}else{
		$db->query("update comm_code set comm_value='$_POST[url]',remark='$_POST[name]' where comm_type='PartnerLogo' and id='$_POST[logoid]'");
		echo "<script>alert('��������޸ĳɹ�!');location.href='../partnerlogo.php';</script>";
	}
}
//ɾ���������
else if(isset($_GET[task]) && "deletePartner"==$_GET[task]){
	$db->query("delete from comm_code where id='$_GET[logoid]' ");
	if(file_exists("../../".$_GET[path]))unlink("../../".$_GET[path]);
	echo "<script>alert('�������ɾ���ɹ�?');location.href='../partnerlogo.php';</script>";


}
//��ҳ��������Ҫ��Ϣ
else if(isset($_POST[task]) && "updatePartnerInfo"==$_POST[task]){
	$db->query("update comm_code set comm_value='".replace($_POST[content])."' where comm_code='Partner' ");
	echo "<script>alert('��ҳ��������Ҫ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";

}else if(isset($_POST[task]) && "updatePartnerDesc"==$_POST[task]){
	$db->query("update comm_code set comm_type='".replace($_POST[title])."',comm_value='".replace($_POST[content2])."' where id='$_POST[id]'");
	echo "<script>alert('���������ϸ��Ϣ�޸ĳɹ�?');location.href='../partner.php';</script>";




//��ϵ����
}else if(isset($_POST[task]) && "updateContact"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentCon])."' where id='".$_POST[conid]."' and comm_type='Contact' ");
	echo "<script>alert('��ϵ���Ǹ��³ɹ�?');location.href='../contactus.php';</script>";

//��Ҫ��ϵ��Ϣ
}else if(isset($_POST[task]) && "updateContactUs"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentAdd])."' where id='".$_POST[conid]."' and comm_type='ContactUs' ");
	echo "<script>alert('��Ҫ��ϵ��ʽ���³ɹ�?');location.href='../contactus.php';</script>";
}

//copy
else if(isset($_POST[task]) && "updateCopy"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentAdd])."' where id='".$_POST[butid]."' and comm_type='Buttom' ");
	echo "<script>alert('Copy��Ϣ���³ɹ�?');location.href='../copy.php';</script>";




//��˾�����Ŀ��Ϣ�޸�
}else if(isset($_POST[task]) && "updateAbout"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST['contentIndex'])."' where id='$_POST[aboutid]' ");
	echo "<script>alert('�����Ϣ�޸�!');location.href='../aboutme.php';</script>";

}




else if(isset($_POST[task]) && "updateMap"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('comm_value')){
		$filename = "images/".$up->getNewFileName();
		$db->query("update boya_config set comm_code='$filename' where comm_type='Map' and id='$_POST[mapid]'");
		if(file_exists("../../".$_POST[path]))
		unlink("../../".$_POST[path]);
  		echo "<script>alert('��ͼ�޸ĳɹ�!');location.href='../map.php';</script>";
	}else{
		echo "<script>alert('��ͼ�޸�ʧ��!');location.href='../map.php';</script>";
	}
}
//���¿ͷ�
else if(isset($_POST[task]) && "updateImConfig"==$_POST[task]){
	$db->query("update boya_config set comm_code='$_POST[comm_code]',comm_flag='$_POST[remark]' where id='$_POST[imId]'");
	echo "<script>alert('���߿ͷ��޸ĳɹ�!');location.href='../service.php';</script>";

}
//���²˵�
else if(isset($_POST[task])&&"updateMenu"==$_POST[task]){
	$indexshow = "indexshow".$_POST[typeid];
	$db->query("update boya_type set type_name='$_POST[type_name]',seq='$_POST[seq]' where id='$_POST[typeid]'");//pid='$_POST[pid]',url='$_POST[url]',
	echo "<script>alert('�������³ɹ�!');location.href='../menu.php?';</script>";

}

//��ҳ���
else if(isset($_POST[task]) && "Index_AD"==$_POST[task]){
	//�ļ�����Ŀ¼URL
	$save_path = '../../images/ad/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('path')){
		$filename = "images/ad/".$up->getNewFileName();
		$db->query("update boya_config set comm_code='$filename',comm_flag='$_POST[seq]' where comm_type='AD_Images' and id='$_POST[adid]'");
		if(file_exists("../../".$info[oldpath]))
		unlink("../../".$_POST[oldpath]);
  		echo "<script>alert('��ҳAD�޸ĳɹ�!');location.href='../ad.php';</script>";
	}else{
		$db->query("update boya_config set comm_value='$_POST[seq]' where comm_type='AD_Images' and id='$_POST[adid]'");
		echo "<script>alert('��ҳAD�޸ĳɹ�!');location.href='../ad.php';</script>";
	}
}
//����SEO��Ϣ
else if(isset($_POST[task]) && "updateSEOInfo"==$_POST[task]){
	$db->query('start transaction');
	$db->query("update boya_config set comm_code='$_POST[title]' where comm_type = 'SEO_Title'");
	$db->query("update boya_config set comm_code='$_POST[keyword]' where comm_type = 'SEO_Keyword'");
	$db->query("update boya_config set comm_code='$_POST[desc]' where comm_type = 'SEO_Desc'");
	if (mysql_errno()) {
		$db->query('rollback');
		echo "<script>alert('SEO��Ϣ�޸�ʧ��!');location.href='../seo.php'</script>";
	} else {
		$db->query('commit');
		echo "<script>alert('SEO��Ϣ�޸ĳɹ�!');location.href='../seo.php'</script>";
	}
}
//�����ֳ�����
else if(isset($_POST[task]) && "updateXcbm"==$_POST[task]){
	$db->query("update boya_config set comm_value='".replace($_POST[contentCon])."' where comm_type = '$_POST[comm_type]'");
	echo "<script>alert('�ֳ������޸ĳɹ�!');location.href='../addzxbm.php';</script>";
}
else{
	//echo "<script>alert('����ʧ��!');window.history.back(-1);</script>";
}
?>
