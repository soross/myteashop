<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addProd"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/product/';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('prod_pic')){
		$filename = $up->getNewFileName();

		$db->query("insert into product(product_name,type_id,product_pic,product_desc,create_date,lang) " .
				"values('$_POST[prod_name]','$_POST[type]','$filename','".replaceContent($_POST[content])."',now(),'$_POST[lang]')");

		echo "<script>if(confirm('产品发布成功,是否继续发布?')){location.href='../addprod.php';}else{location.href='../product.php';}</script>";
	}else{
		echo "<script>alert('产品发布失败,请重试!');location.href='../addprod.php';</script>";
	}
}

else if(isset($_GET[task]) && "deleteProd"==$_GET[task]){
	$db->query("delete from product where id = '$_GET[prodid]'");
	echo "<script>alert('产品删除成功?');location.href='../product.php';</script>";
}

else if(isset($_POST[task]) && "updateProd"==$_POST[task]){
	//文件保存目录URL
	$save_path = '../../images/product';
	//定义允许上传的文件扩展名
	$ext_arr = array('gif', 'jpg', 'png');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>100000));//100k
	if($up->uploadFile('prod_picture')){
		$filename = $up->getNewFileName();
		unlink("../../images/product/".$_POST[prodpic]);
	}else{
		$filename = $_POST[prodpic];
	}
	//print_r($up->getErrorMsg());

	$db->query("update product set product_name='$_POST[prod_name]',type_id='$_POST[type]'," .
			"product_desc='".replaceContent($_POST[content])."',product_pic='$filename'," .
			"lang='$_POST[lang]' where id='".$_POST[prodid]."'");

	echo "<script>if(confirm('产品修改成功,是否继续发布?')){location.href='../updateprod.php?task=toUpdateProduct&prodid=".$_POST[prodid]."';}else{location.href='../product.php';}</script>";
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}

?>
