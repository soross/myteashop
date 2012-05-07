<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	if($_POST[isshow]=='0'){
		if($_POST[isfilenews]=='0'){
			$db->query("insert into news(title,click,content,create_date,type_id)" .
					"values('$_POST[title]','$_POST[click]','".replace($_POST[content])."',now(),'$_POST[type]')");
			echo "<script>if(confirm('文章发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
		}else{
			//文件保存目录URL
			$save_path = '../../file/';//201109281154581.jpg
			//定义允许上传的文件扩展名
			$ext_arr = array('doc','xls', 'ppt','txt','wps','docx','xlsx','pptx','pdf');
			require "../action/FileUpload.class.php";
			$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(500*1024)));//500k
			if($up->uploadFile('uploadfile')){
				$filename = "file/".$up->getNewFileName();
				$srcfilename=$up->getSrcFileName();
				$db->query("insert into news(title,click,content,create_date,type_id,filename,filepath)" .
					"values('$_POST[title]','$_POST[click]','".replace($_POST[content])."',now(),'$_POST[type]','$filename','$srcfilename')");
		  		echo "<script>if(confirm('文章发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
			}else{
				print_r($up->getErrorMsg());
				echo "<script>alert('文章发布失败,请检查上传文件是否符合要求!');location.href='../addnews.php';</script>";
			}
		}
	}else{
		//文件保存目录URL
		$save_path = '../../images/upload/';//201109281154581.jpg
		//定义允许上传的文件扩展名
		$ext_arr = array('jpg','gif', 'png');
		require "../action/FileUpload.class.php";
		$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(100*1024)));//100k
		if($up->uploadFile('filepath')){
			$filename = "images/upload/".$up->getNewFileName();
			$db->query("insert into news(title,click,content,create_date,type_id,isshow,path)" .
				"values('$_POST[title]','$_POST[click]','".replace($_POST[content])."',now(),'$_POST[type]','1','$filename')");
	  		echo "<script>if(confirm('文章发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
		}else{
			echo "<script>alert('文章发布失败,请检查快速导航图片是否符合要求!');location.href='../addnews.php';</script>";
		}
	}

}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	if(file_exists("../../".$_GET[path])){
		unlink("../../".$_GET[path]);
	}
	if(file_exists("../../".$_GET['file'])){
		unlink("../../".$_GET['file']);
	}
	$db->query("delete from news where id = '$_GET[newsid]'");
	echo "<script>alert('文章删除成功?');location.href='../news.php?page=$_GET[cpage]';</script>";


}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";

}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("select n.id from news n ,type t where n.type_id=t.id and t.isnewslist='0' and n.type_id='$_POST[type]' and n.type_id !='$_POST[srctypeid]'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		echo "<script>alert('文章更新失败,该类型文章已存在!');location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';</script>";
	}else{
		if($_POST[isshow]=='0'){
			if($_POST[isfilenews]=='0'){
				$db->query("update news set title='$_POST[title]',click='$_POST[click]',content='".replace($_POST[content])."'," .
						"type_id='$_POST[type]',isshow=null,filepath=null,filename=null where id='$_POST[newsid]'");
				if($_POST[srcisshow]=='1'){
					if(file_exists("../../".$_POST[path]))
						unlink("../../".$info[path]);
				}
				if($_POST[srcfilepath]!=""){
					if(file_exists("../../".$_POST[srcfilepath]))
						unlink("../../".$info[srcfilepath]);
				}
				echo "<script>if(confirm('文章更新成功,是否继续更新?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";
			}else{
				//文件保存目录URL
				$save_path = '../../file/';//201109281154581.jpg
				//定义允许上传的文件扩展名
				$ext_arr = array('word','excel', 'ppt','txt');
				require "../action/FileUpload.class.php";
				$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(500*1024)));//500k
				if($up->uploadFile('uploadfile')){
					$filename = "file/".$up->getNewFileName();
					$srcfilename=$up->getSrcFileName();
					if($_POST[srcfilepath]!=""){
						if(file_exists("../../".$_POST[srcfilepath]))
							unlink("../../".$_POST[srcfilepath]);
					}
					$db->query("update news set title='$_POST[title]',click='$_POST[click]',content='".replace($_POST[content])."',type_id='$_POST[type]',filename='$srcfilename',filepath='$filename' where id='$_POST[newsid]'");
					echo "<script>if(confirm('文章内容、文件更新成功,是否继续更新?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";
				}else{
					$db->query("update news set title='$_POST[title]',click='$_POST[click]',content='".replace($_POST[content])."',type_id='$_POST[type]' where id='$_POST[newsid]'");
					echo "<script>alert('文章内容更新成功,文件更新失败,请检查上传文件是否符合要求!');location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';</script>";
				}
			}
		}else{
			//文件保存目录URL
			$save_path = '../../images/upload/';//201109281154581.jpg
			//定义允许上传的文件扩展名
			$ext_arr = array('jpg','gif', 'png');
			require "../action/FileUpload.class.php";
			$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(100*1024)));//100k
			if($up->uploadFile('filepath')){
				$filename = "images/upload/".$up->getNewFileName();
				$db->query("update news set title='$_POST[title]',click='$_POST[click]',content='".replace($_POST[content])."'," .
						"type_id='$_POST[type]',isshow='1',path='$filename' where id='$_POST[newsid]'");
				if($_POST[srcisshow]=='1'){
					if(file_exists("../../".$_POST[path]))
						unlink("../../".$info[path]);
				}
		  		echo "<script>if(confirm('文章内容、图片更新成功,是否继续更新?')){location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';}else{location.href='../news.php';}</script>";
			}else{
				$db->query("update news set title='$_POST[title]',click='$_POST[click]',content='".replace($_POST[content])."'," .
						"type_id='$_POST[type]' where id='$_POST[newsid]'");
				echo "<script>alert('文章内容更新成功,图片更新失败,请检查图片格式是否符合要求!');location.href='../post/news.action.php?task=toUpdateNews&newsid=$_POST[newsid]';</script>";
			}
		}
	}
}
//新增类型
else if(isset($_POST[task])&& "AddType"==$_POST[task]){
	if($_POST[type]==-1 && $_POST[isnewslist]=='0' ){
		echo "<script>alert('文章类型新增失败,顶级类型不能同时为单一文章类型!');location.href='../type.php';</script>";
	}else{
		$db->query("insert into type(type_name,pid,remark,flag,isnewslist) values('$_POST[name]','$_POST[type]','-1','1','$_POST[isnewslist]')");
		echo "<script>alert('文章类型新增成功!');location.href='../type.php';</script>";
	}
}
//修改类型
else if(isset($_POST[task])&& "updateType"==$_POST[task]){
	$cnt = 0;
	if($_POST[srctype]!=$_POST[type]){
		$db->query("select id from type where pid='$_POST[typeid]'");
		$cnt = $db->db_num_rows();
	}
	if($cnt>0){
		echo "<script>alert('文章类型更新失败,该类型存在子类型,无法更新父类型!');location.href='../type.php';</script>";
	}else{
		if($_POST[type]==-1 && $_POST[isnewslist]=='0' ){
			echo "<script>alert('文章类型更新失败,顶级类型不能同时为单一文章类型!');location.href='../type.php';</script>";
		}else{
			$db->query("update type set type_name='$_POST[type_name]',pid='$_POST[type]' ,isnewslist='$_POST[isnewslist]' where id='$_POST[typeid]'");
			echo "<script>alert('文章类型更新成功!');location.href='../type.php';</script>";
		}
	}
}
//删除类型
else if(isset($_GET[task])&& "deleteType"==$_GET[task]){
	$db->query("select id from type where pid='$_GET[typeid]'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		echo "<script>alert('文章类型删除失败,该类型存在子类型!');location.href='../type.php';</script>";
	}else{
		$db->query("delete from type where id='$_GET[typeid]'");
		echo "<script>alert('文章类型删除成功!');location.href='../type.php';</script>";
	}
}
else if(isset($_POST[task]) && "alldelNews"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
	if($selectsingle!=""){
	$del_num=count($selectsingle);
	for($i=0;$i<$del_num;$i++){
		$db->query("delete from news where id ='$selectsingle[$i]'");
	}
	echo("<script type='text/javascript'>alert('删除成功！');location.href='../news.php';</script>");
	}else{
	echo("<script type='text/javascript'>alert('删除成功失改！');location.href='../news.php';</script>");
	}

}




?>
