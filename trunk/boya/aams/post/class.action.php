<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addClass"==$_POST[task]){
	if($_POST[type_id]=='8'){
		if($_POST[content_type]=='2'){
			$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,content,create_date) " .
					"values('$_POST[type_id]','$_POST[classtype]','$_POST[openlevel]','$_POST[classname]','$_POST[hour]','$_POST[fee]'," .
					"'$_POST[content_type]','$_POST[content]',now())");
			echo "<script>if(confirm('�γ������ɹ�,�Ƿ��������1?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
		}else{
			//�ļ�����Ŀ¼URL
			$save_path = '../../file/'; //201109281154581.jpg
			//���������ϴ����ļ���չ��
			$ext_arr = array ('doc','docx','xls','xlsx','txt');
			require "../action/FileUpload.class.php";
			$up = new FileUpload(array (
				'isRandName' => true,
				'allowType' => $ext_arr,
				'FilePath' => $save_path,
				'MAXSIZE' => (1024 * 1024 * 10
			)));//10M
			if ($up->uploadFile('path')) {
				$filename="file/".$up->getNewFileName();
				$srcfilename = $up->getSrcFileName();
				$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,path,create_date,content) " .
					"values('$_POST[type_id]','$_POST[collegetype]','$_POST[openlevel]','$_POST[zy]','$_POST[xz]','$_POST[fee]'," .
					"'$_POST[content_type]','$filename',now(),'$srcfilename')");
				echo "<script>if(confirm('�γ������ɹ�,�Ƿ��������2?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}else{
				echo "<script>if(confirm('�γ�����ʧ��,�����ļ��Ƿ����Ҫ��,�Ƿ�����3?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}
	}else{
		if($_POST[content_type]=='2'){
			$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,content,create_date) " .
					"values('$_POST[type_id]','$_POST[classtype]','$_POST[opentime]','$_POST[classname]','$_POST[hour]','$_POST[fee]'," .
					"'$_POST[content_type]','$_POST[content]',now())");
			echo "<script>if(confirm('�γ������ɹ�,�Ƿ��������4?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
		}else{
			//�ļ�����Ŀ¼URL
			$save_path = '../../file/'; //201109281154581.jpg
			//���������ϴ����ļ���չ��
			$ext_arr = array ('doc','docx','xls','xlsx','txt');
			require "../action/FileUpload.class.php";
			$up = new FileUpload(array (
				'isRandName' => true,
				'allowType' => $ext_arr,
				'FilePath' => $save_path,
				'MAXSIZE' => (1024 * 1024 * 10
			)));//10M
			if ($up->uploadFile('path')) {
				$filename="file/".$up->getNewFileName();
				$srcfilename=$up->getSrcFileName();
				$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,path,create_date,content) " .
					"values('$_POST[type_id]','$_POST[classtype]','$_POST[opentime]','$_POST[classname]','$_POST[hour]','$_POST[fee]'," .
					"'$_POST[content_type]','$filename',now(),'$srcfilename')");
				echo "<script>if(confirm('�γ������ɹ�,�Ƿ��������5?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}else{
				echo "<script>if(confirm('�γ�����ʧ��,�����ļ��Ƿ����Ҫ��,�Ƿ�����6?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}

	}


}else if(isset($_POST[task]) && "updateClass"==$_POST[task]){
	if($_POST[type_id]=='8'){
		if($_POST[content_type]=='2'){
			if($_POST[old_content_type]==1 && !empty($_POST[path])){
				unlink('../../'.$_POST[path]);
			}
			$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]',path=''," .
					"open_time='$_POST[openlevel]',course_name='$_POST[classname]',class_hour='$_POST[hour]'" .
					",fee='$_POST[fee]',content_type='$_POST[content_type]',content='$_POST[content]' where id='$_POST[classid]' ");
			echo "<script>if(confirm('�γ��޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
		}else{
			//�ļ�����Ŀ¼URL
			$save_path = '../../file/'; //201109281154581.jpg
			//���������ϴ����ļ���չ��
			$ext_arr = array ('doc','docx','xls','xlsx','txt');
			require "../action/FileUpload.class.php";
			$up = new FileUpload(array (
				'isRandName' => true,
				'allowType' => $ext_arr,
				'FilePath' => $save_path,
				'MAXSIZE' => (1024 * 1024 * 10
			)));//10M
			if ($up->uploadFile('path')) {
				$filename="file/".$up->getNewFileName();
				$srcfilename= $up->getSrcFileName();
				if($_POST[old_content_type]==1&& !empty($_POST[path])){
					unlink('../../'.$_POST[path]);
				}
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[collegetype]'," .
						"open_time='$_POST[openlevel]',course_name='$_POST[zy]',class_hour='$_POST[xz]',fee='$_POST[fee]'," .
						"content_type='$_POST[content_type]',path='$filename',content='$srcfilename' where id='$_POST[classid]' " );
				echo "<script>if(confirm('�γ��޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}else{
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[collegetype]'," .
						"open_time='$_POST[openlevel]',course_name='$_POST[zy]',class_hour='$_POST[xz]',fee='$_POST[fee]'," .
						"content_type='$_POST[content_type]' where id='$_POST[classid]' " );
				echo "<script>if(confirm('�ļ��޸�ʧ�ܻ�û���޸�,������Ϣ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}
		}
	}else{
		if($_POST[content_type]=='2'){
			if($_POST[old_content_type]==1&& !empty($_POST[path])){
				unlink('../../'.$_POST[path]);
			}
			$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]',path=''," .
					"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'," .
					"fee='$_POST[fee]',content_type='$_POST[content_type]',content='$_POST[content]' where id='$_POST[classid]' ");
			echo "<script>if(confirm('�γ��޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
		}else{
			//�ļ�����Ŀ¼URL
			$save_path = '../../file/'; //201109281154581.jpg
			//���������ϴ����ļ���չ��
			$ext_arr = array ('doc','docx','xls','xlsx','txt');
			require "../action/FileUpload.class.php";
			$up = new FileUpload(array (
				'isRandName' => true,
				'allowType' => $ext_arr,
				'FilePath' => $save_path,
				'MAXSIZE' => (1024 * 1024 * 10
			)));//10M
			if ($up->uploadFile('path')) {
				$filename="file/".$up->getNewFileName();
				$srcfilename=$up->getSrcFileName();
				if($_POST[old_content_type]==1&& !empty($_POST[path])){
					unlink('../../'.$_POST[path]);
				}
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]'," .
						"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'," .
						"fee='$_POST[fee]',content_type='$_POST[content_type]',path='$filename',content='$srcfilename'  where id='$_POST[classid]' ");
				echo "<script>if(confirm('�γ��޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}else{
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]'," .
						"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'," .
						"fee='$_POST[fee]',content_type='$_POST[content_type]' where id='$_POST[classid]' ");
				echo "<script>if(confirm('�ļ��޸�ʧ�ܻ�û���޸�,������Ϣ�޸ĳɹ�,�Ƿ�����޸�?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}
	}
}
//ɾ���γ�
else if(isset($_GET[task]) &&"deleteClass"==$_GET[task]){
	if(!empty($_GET[path])){
		unlink('../../'.$_GET[path]);
	}
	$db->query("delete from boya_course where id='$_GET[classid]'");
	echo "<script>alert('ɾ���ɹ�?');location.href='../classlist.php';</script>";
}
//�رձ���class.action.php?task=closeClass&classid=6
else if(isset($_GET[task]) &&"closeClass"==$_GET[task]){
	$db->query("update boya_course set isselect='0' where id='$_GET[classid]'");
	echo "<script>alert('�����رճɹ�!');location.href='../classlist.php';</script>";
}
//���¿�������
else if(isset($_GET[task]) &&"refashClass"==$_GET[task]){

	$db->query("update boya_course set isselect='-1' where id='$_GET[classid]'");
	$sql="";
	if($_GET[typeid]=='8'){
		$sql="insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level)" .
		" select type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,'1',now(),open_level from boya_course where id='$_GET[classid]'";
		$db->query($sql);
		echo "<script>alert('���±��������ɹ�?');location.href='../classlist.php';</script>";
	}else{
		$sql="insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level)" .
		" select type_id,class_name,'',course_name,class_hour,fee,path,content_type,content,'1',now(),open_level from boya_course where id='$_GET[classid]'";
		$db->query($sql);
		$id = $db->insert_id();
		echo "<script>alert('���±�������,����д����ʱ����ɿ�������?');location.href='../updateclass.php?task=updateClass&classid=$id';</script>";
	}
}



else if(isset($_GET[task]) && "delYz"==$_GET[task]){
	$db->query("delete from yz where id = '$_GET[id]'");
	$db->addLog("CAP13002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ��Ԥ֧","ɾ��Ԥ֧�ɹ���");
	echo "<script>alert('ɾ���ɹ�?');location.href='../yzlist.php';</script>";
}
?>