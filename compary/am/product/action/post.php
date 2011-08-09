<?php
require_once("../../action/global_post.php");
//echo "file upload....".$_POST[task]."...".$_GET[page];

//添加产品
if(isset($_POST[task])&&"addProduct"==$_POST[task]){
	//上传文件并获取文件名
	require_once("../../action/fileUpload.php");

	//插入其他数据到数据库
	$sql = "insert into prod(prod_name,prod_desc,prod_class,create_date,prod_picture,state,prod_link,compary)".
	"values('$_POST[prod_name]','$_POST[prodDesc]','$_POST[prod_class]',now(),'$fname','$_POST[prod_url]','$_POST[prod_link]','$_POST[compary]')";
	$db->query($sql);

	//更新字段
	$prodId = $db->insert_id();
	$prodUrl = $_POST[prod_url]==1?"dome/".$prodId."/index.html":NULL;
	$prodCode = getProdCode($db,$_POST[prod_class],$prodId);
	$updateSql = "update prod set prod_code='".$prodCode."',prod_info_url='product_".$prodId."_info.html',case_info_url='case_".$prodId."_info.html',prod_url='".$prodUrl."' where id='".$prodId."'";
	$db->query($updateSql);
	echo "<script>if(confirm('产品添加成功,是否继续添加产品?')){location.href='../prodadd.php';}else{location.href='../prodlist.php'}</script>";
}
//删除产品
else if(isset($_GET[task])&&"deleteProd"==$_GET[task]){
	unlink("../../../product/images/".$_GET[path]);
	$db->query("delete from prod where id='".$_GET[id]."'");
	echo "<script>alert('产品删除成功,将返回产品列表!');location.href='../prodlist.php?page=$_GET[page]';</script>";
}

//修改产品信息
else if(isset($_POST[task])&&"editProduct"==$_POST[task]){
	//上传文件并获取文件名
	require_once("../../action/fileUpload.php");
	//重新编码
	$prodCode = getProdCode($db,$_POST[prod_class],$_POST[id]);

	$sql = "update prod set prod_name='$_POST[prod_name]',prod_code='$prodCode', prod_desc='$_POST[prodDesc]',prod_class='$_POST[prod_class]',";
	if("ERROR"!=$failed){
		$sql.=" prod_picture='$fname', ";
		unlink("../../../product/images/".$_POST[path]);
	}
	$sql.= "state='$_POST[state]',prod_link='$_POST[prod_link]',compary='$_POST[compary]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('产品修改成功,是否继续修改产品信息?')){location.href='../prodedit.php?page=$_POST[page]&id=$_POST[id]&task=editProd';}else{location.href='../prodlist.php?page=$_POST[page]'}</script>";
}
//添加产品类型
else if(isset($_POST[task])&&"addProdClass"==$_POST[task]){
	$sql = "insert into prod_class(class_name,ename,full_ename,create_date) values('$_POST[class_name]','$_POST[ename]','$_POST[full_ename]',now())";
	$db->query($sql);
	$prodClassId = $db->insert_id();
	$db->query("update prod_class set url='prodlist.php?classcode=".$prodClassId."' where id='".$prodClassId."'");
	echo "<script>alert('产品类型添加成功,将返回产品类型列表!');location.href='../prodclass.php'</script>";
}
//更新产品类型
else if(isset($_POST[task])&&"updateProdClass"==$_POST[task]){
	$db->query("update prod_class set class_name='$_POST[class_name]',ename='$_POST[ename]',full_ename='$_POST[full_ename]' where id='".$_POST[id]."'");
	echo "<script>alert('产品类型修改成功,将返回产品类型列表!');location.href='../prodclass.php';</script>";
}
//删除产品类型
else if(isset($_GET[task])&&"deleteProdClass"==$_GET[task]){
	$db->query("delete from prod_class where id='".$_GET[id]."'");
	echo "<script>alert('产品类型删除成功,将返回产品类型列表!');location.href='../prodclass.php';</script>";
}

?>
