<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addClass"==$_POST[task]){
	if($_POST[type_id]=='8'){
		if($_POST[content_type]=='2'){
			$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,content,create_date,open_level) " .
					"values('$_POST[type_id]','$_POST[collegetype]','$_POST[opentime]','$_POST[zy]','$_POST[xz]','$_POST[fee]'," .
					"'$_POST[content_type]','".replace($_POST[content])."',now(),'$_POST[openlevel]')");
			echo "<script>if(confirm('课程新增成功,是否继续新增1?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
		}else{
			//文件保存目录URL
			$save_path = '../../file/'; //201109281154581.jpg
			//定义允许上传的文件扩展名
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
				$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,path,create_date,content,open_level) " .
					"values('$_POST[type_id]','$_POST[collegetype]','$_POST[opentime]','$_POST[zy]','$_POST[xz]','$_POST[fee]'," .
					"'$_POST[content_type]','$filename',now(),'$srcfilename','$_POST[openlevel]')");
				echo "<script>if(confirm('课程新增成功,是否继续新增2?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}else{
				echo "<script>if(confirm('课程新增失败,请检查文件是否符合要求,是否重试3?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}
	}else{
		if($_POST[content_type]=='2'){
			$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,content,create_date) " .
					"values('$_POST[type_id]','$_POST[classtype]','$_POST[opentime]','$_POST[classname]','$_POST[hour]','$_POST[fee]'," .
					"'$_POST[content_type]','".replace($_POST[content])."',now())");
			echo "<script>if(confirm('课程新增成功,是否继续新增4?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
		}else{
			//文件保存目录URL
			$save_path = '../../file/'; //201109281154581.jpg
			//定义允许上传的文件扩展名
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
				$db->query("insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,content_type,path,create_date,content,open_level) " .
					"values('$_POST[type_id]','$_POST[classtype]','$_POST[opentime]','$_POST[classname]','$_POST[hour]','$_POST[fee]'," .
					"'$_POST[content_type]','$filename',now(),'$srcfilename','$_POST[openlevel]')");
				echo "<script>if(confirm('课程新增成功,是否继续新增5?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}else{
				echo "<script>if(confirm('课程新增失败,请检查文件是否符合要求,是否重试6?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}

	}


}else if(isset($_POST[task]) && "updateClass"==$_POST[task]){
	if($_POST[type_id]=='8'){
		if($_POST[content_type]=='2'){
			if($_POST[old_content_type]==1 && !empty($_POST[path])){
				unlink('../../'.$_POST[path]);
			}
			///111111111111111
			$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[collegetype]',path=''," .
					"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'" .
					",fee='$_POST[fee]',content_type='$_POST[content_type]',content='".replace($_POST[content])."',open_level='$_POST[openlevel]' where id='$_POST[classid]' ");
			echo "<script>if(confirm('课程修改成功,是否继续修改?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
		}else{
			//文件保存目录URL
			$save_path = '../../file/'; //201109281154581.jpg
			//定义允许上传的文件扩展名
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
						"open_time='$_POST[opentime]',course_name='$_POST[zy]',class_hour='$_POST[xz]',fee='$_POST[fee]'," .
						"content_type='$_POST[content_type]',path='$filename',content='$srcfilename' ,open_level='$_POST[openlevel]' where id='$_POST[classid]' " );
				echo "<script>if(confirm('课程修改成功,是否继续修改?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}else{
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[collegetype]'," .
						"open_time='$_POST[opentime]',course_name='$_POST[zy]',class_hour='$_POST[xz]',fee='$_POST[fee]'," .
						"content_type='$_POST[content_type]' ,open_level='$_POST[openlevel]' where id='$_POST[classid]' " );
				echo "<script>if(confirm('文件修改失败或没有修改,基础信息修改成功,是否继续修改?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}
		}
	}else{
		if($_POST[content_type]=='2'){
			if($_POST[old_content_type]==1&& !empty($_POST[path])){
				unlink('../../'.$_POST[path]);
			}
			$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]',path=''," .
					"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'," .
					"fee='$_POST[fee]',content_type='$_POST[content_type]',content='".replace($_POST[content])."' where id='$_POST[classid]' ");
			echo "<script>if(confirm('课程修改成功,是否继续修改?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
		}else{
			//文件保存目录URL
			$save_path = '../../file/'; //201109281154581.jpg
			//定义允许上传的文件扩展名
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
				echo "<script>if(confirm('课程修改成功,是否继续修改?')){location.href='../updateclass.php?task=updateClass&classid=$_POST[classid]';}else{location.href='../classlist.php';}</script>";
			}else{
				$db->query("update boya_course set type_id='$_POST[type_id]',class_name='$_POST[classtype]'," .
						"open_time='$_POST[opentime]',course_name='$_POST[classname]',class_hour='$_POST[hour]'," .
						"fee='$_POST[fee]',content_type='$_POST[content_type]' where id='$_POST[classid]' ");
				echo "<script>if(confirm('文件修改失败或没有修改,基础信息修改成功,是否继续修改?')){location.href='../addclass.php';}else{location.href='../classlist.php';}</script>";
			}
		}
	}
}
//删除课程
else if(isset($_GET[task]) &&"deleteClass"==$_GET[task]){
	if(!empty($_GET[path])){
		unlink('../../'.$_GET[path]);
	}
	$db->query("delete from boya_course where id='$_GET[classid]'");
	echo "<script>alert('删除成功?');location.href='../classlist.php';</script>";
}
//关闭报名class.action.php?task=closeClass&classid=6
else if(isset($_GET[task]) &&"closeClass"==$_GET[task]){
	$db->query("update boya_course set isselect='0' where id='$_GET[classid]'");
	echo "<script>alert('报名关闭成功!');location.href='../classlist.php';</script>";
}
//重新开启报名
else if(isset($_GET[task]) &&"refashClass"==$_GET[task]){

	$db->query("update boya_course set isselect='-1' where id='$_GET[classid]'");
	$sql="";
	if($_GET[typeid]=='8'){
		$sql="insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level)" .
		" select type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,'1',now(),open_level from boya_course where id='$_GET[classid]'";
		$db->query($sql);
		echo "<script>alert('重新报名开启成功?');location.href='../classlist.php';</script>";
	}else{
		$sql="insert into boya_course(type_id,class_name,open_time,course_name,class_hour,fee,path,content_type,content,isselect,create_date,open_level)" .
		" select type_id,class_name,'',course_name,class_hour,fee,path,content_type,content,'1',now(),open_level from boya_course where id='$_GET[classid]'";
		$db->query($sql);
		$id = $db->insert_id();
		echo "<script>alert('重新报名开启,请填写开课时间完成开启操作?');location.href='../updateclass.php?task=updateClass&classid=$id';</script>";
	}
}


//regFee
else if(isset($_POST[task]) && "regFee"==$_POST[task]){
	$db->query("update boya_reg_user set money='$_POST[fee]',pay_date=now(),input_user='".$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']."',remark='".replace($_POST[content])."' where id='$_POST[regid]' ");
	echo "<script>alert('费用登记成功?');location.href='../reguserlist.php';</script>";
}

//批量删除

else if(isset($_POST[task]) && "alldelClass"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
	if($selectsingle!=""){
	$del_num=count($selectsingle);
	for($i=0;$i<$del_num;$i++){
		$db->query("delete from boya_course where id ='$selectsingle[$i]'");
	}
	echo("<script type='text/javascript'>alert('批量删除课程成功！');location.href='../classlist.php';</script>");
	}else{
	echo("<script type='text/javascript'>alert('批量删除课程成功失改！');location.href='../classlist.php';</script>");
	}

}
?>
