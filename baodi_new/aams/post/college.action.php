<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addCollege"==$_POST[task]){
	$query = $db->query("select * from college_type where id = '".$_POST[type]."' and remark='��'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$query = $db->query("select * from college c where c.type_id='".$_POST[type]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			//addslashes
			$db->query("insert into college(type_id,content_zh_cn,content_en,create_date,remark) values('$_POST[type]','".replaceContent($_POST[content])."','".replaceContent($_POST[content1])."',now(),null)");
			echo "<script>if(confirm('����ѧԺ֪ʶ���ӳɹ�,�Ƿ��������?')){location.href='../addcollege.php';}else{location.href='../college.php';}</script>";
		}else{
			echo "<script>alert('��֪ʶ�����Ѿ�����,���ʧ��,�뵽֪ʶ�б��в鿴�޸�!');location.href='../addcollege.php';</script>";
		}
	}else{
		echo "<script>alert('��֪ʶ����Ϊ����,��ѡ������������Ϊ����!');location.href='../addcollege.php';</script>";
	}
}else if(isset($_POST[task]) && "updateCollege"==$_POST[task]){
	$query = $db->query("select * from college_type where id = '".$_POST[type]."' and remark='��'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		if($_POST[typeid]==$_POST[type]){
			$db->query("update college set content_zh_cn='".replaceContent($_POST[content])."',content_en='".replaceContent($_POST[content1])."' where id='".$_POST[newid]."'");
			echo "<script>if(confirm('����ѧԺ֪ʶ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';}else{location.href='../college.php';}</script>";
		}else{
			$query = $db->query("select * from college where type_id='".$_POST[type]."' ");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("update college set type_id='$_POST[type]',content_zh_cn='".replaceContent($_POST[content])."',content_en='".replaceContent($_POST[content1])."' where id='".$_POST[newid]."'");
				echo "<script>if(confirm('����ѧԺ֪ʶ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';}else{location.href='../college.php';}</script>";
			}else{
				echo "<script>alert('��֪ʶ�����Ѿ�����,����ʧ��,�뵽֪ʶ�б��в鿴�޸�!');location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';</script>";
			}
		}
	}else{
		echo "<script>alert('��֪ʶ����Ϊ����,��ѡ������������Ϊ����!');location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';</script>";
	}
}
else if(isset($_GET[task])&&"deleteCollege" ==$_GET[task]){
	$db->query("delete from college where id = '$_GET[newsid]'");
	echo "<script>alert('����ѧԺ֪ʶɾ���ɹ�?');location.href='../college.php';</script>";

}
else if(isset($_POST[task]) && "alldelCollege"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //���ո�ѡ���ֵ   Ϊ����
	if($selectsingle!=""){
		$del_num=count($selectsingle);
		for($i=0;$i<$del_num;$i++){
			$db->query("delete from college where id ='$selectsingle[$i]'");
		}
		echo("<script type='text/javascript'>alert('ɾ���ɹ���');location.href='../college.php';</script>");
	}else{
		echo("<script type='text/javascript'>alert('ɾ���ɹ�ʧ�ģ�');location.href='../college.php';</script>");
	}
}
else if(isset($_POST[task]) && "AddCollegeType"==$_POST[task]){
	if($_POST[pid]!=0){
		$db->query("update college_type set remark='��' where id='$_POST[pid]'");
	}
	$db->query("insert into college_type(college_title_zh_cn,college_title_en,pid) values('".$_POST[type_zh_cn]."','".$_POST[type_en]."','".$_POST[pid]."')");
	$id = $db->insert_id();
	$db->query("update college_type set link_url='college.php?typeid=".$id."' where id='$id'");

	echo("<script type='text/javascript'>alert('���֪ʶ���ͳɹ���');location.href='../collegetype.php';</script>");

}
else if(isset($_POST[task]) && "updateCollegeType"==$_POST[task]){
	$db->query("update college_type set college_title_zh_cn='".$_POST[title_zh_cn]."',college_title_en='".$_POST[title_en]."'  where id='$_POST[typeid]'");
	echo("<script type='text/javascript'>alert('֪ʶ�����޸ĳɹ���');location.href='../collegetype.php';</script>");

}
else if(isset($_GET[task]) && "deleteCollegeType"==$_GET[task]){
	$query =$db->query("select id from college_type where pid='$_GET[typeid]'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$db->query("delete from college_type where id='$_GET[typeid]'");
		echo("<script type='text/javascript'>alert('֪ʶ����ɾ���ɹ���');location.href='../collegetype.php';</script>");
	}else{
		echo("<script type='text/javascript'>alert('���ڶ�������,��֪ʶ����ɾ��ʧ�ܣ�');location.href='../collegetype.php';</script>");
	}
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
